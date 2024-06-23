import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/auth_text_field.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: kIsWeb
            ? null
            : AppBar(
                title: Text(S.current.BBTKirovApp),
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.mapOrNull(
              error: (state) {
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
                NavigationManager.instance.goHomePage();
              },
            );
          },
          builder: (context, state) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              if (state.isAuthenticated) {
                NavigationManager.instance.goHomePage();
              }
            });

            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: kIsWeb ? 412 : null,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 200,
                        child: BlocBuilder<ChangeThemeBloc, ThemeState>(
                          builder: (context, state) {
                            return Image.asset(
                              state.isDark ? AppConstants.bbtLogoDark : AppConstants.bbtLogo,
                            );
                          },
                        ),
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
                        onPressed: NavigationManager.instance.goRegistrationPage,
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
            );
          },
        ),
      ),
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
