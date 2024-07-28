import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/authentication/pages/registration_popup_content.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/auth_text_field.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/show_auth_popup.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPopupContent extends StatefulWidget {
  const AuthPopupContent({super.key});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPopupContent> {
  late final TextEditingController _controllerUsername;
  late final TextEditingController _controllerPassword;
  late final FocusNode _focusNodeUsername;
  late final FocusNode _focusNodePassword;

  @override
  void initState() {
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
    _focusNodeUsername = FocusNode();
    _focusNodePassword = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (state) {
            NavigationManager.instance.pop();
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(S.current.error),
                  content: Text(S.current.authError),
                  actions: <Widget>[
                    TextButton(
                      onPressed: NavigationManager.instance.pop,
                      child: Text(
                        S.current.ok,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          authenticated: (state) {
            NavigationManager.instance.pop();
          },
        );
      },
      builder: (context, state) {
        return Align(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
              child: Material(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BlocBuilder<ChangeThemeBloc, ThemeState>(
                      builder: (context, state) {
                        return Image.asset(
                          state.isDark ? AppConstants.bbtLogoDark : AppConstants.bbtLogo,
                          height: 200,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        textAlign: TextAlign.center,
                        S.current.authExecute,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AuthTextField(
                      labelText: S.current.login,
                      controller: _controllerUsername,
                      focusNode: _focusNodeUsername,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AuthTextField(
                      labelText: S.current.password,
                      controller: _controllerPassword,
                      focusNode: _focusNodePassword,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          final login = _controllerUsername.text.trim();
                          final password = _controllerPassword.text.trim();
                          context
                              .read<AuthBloc>()
                              .add(AuthEvent.logIn(login: login, password: password));
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Theme.of(context).primaryColor,
                          fixedSize: const Size(320, 50),
                          textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(S.current.enter),
                      ),
                    ),
                    const SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {
                        NavigationManager.instance.pop();
                        showAuthPopup(context,
                            child: const RegistrationPopupContent(), height: 544);
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(320, 50),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                        foregroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        S.current.signUp,
                        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    _focusNodeUsername.dispose();
    _focusNodePassword.dispose();
    super.dispose();
  }
}
