import 'package:bbt/core/app_constants.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/change_theme_bloc/change_theme_bloc.dart';
import 'package:bbt/features/presentation/bloc/reg_bloc/registration_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/auth_text_field.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPopupContent extends StatefulWidget {
  const RegistrationPopupContent({super.key});

  @override
  RegistrationPageState createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPopupContent> {
  late final TextEditingController _controllerEmail;
  late final TextEditingController _controllerUsername;
  late final TextEditingController _controllerPassword;
  late final FocusNode _focusNodeEmail;
  late final FocusNode _focusNodeUsername;
  late final FocusNode _focusNodePassword;

  @override
  void initState() {
    _controllerEmail = TextEditingController();
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
    _focusNodeEmail = FocusNode();
    _focusNodeUsername = FocusNode();
    _focusNodePassword = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (state) {
            NavigationManager.instance.pop();
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(S.current.error),
                  content: Text(S.current.regError),
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
          successful: (state) {
            context.read<AuthBloc>().add(AuthEvent.logIn(
                login: state.credential.login, password: state.credential.password));
            NavigationManager.instance.pop();

            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(S.current.successfully),
                  content: Text(S.current.successfullyRegister),
                  actions: <Widget>[
                    TextButton(
                      child: Text(
                        S.current.ok,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        NavigationManager.instance
                          ..pop()
                          ..pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      child: Align(
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
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      S.current.registerForEnter,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AuthTextField(
                    controller: _controllerEmail,
                    focusNode: _focusNodeEmail,
                    labelText: S.current.inputEmail,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AuthTextField(
                    controller: _controllerUsername,
                    focusNode: _focusNodeUsername,
                    labelText: S.current.inputUserName,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AuthTextField(
                    controller: _controllerPassword,
                    focusNode: _focusNodePassword,
                    obscureText: true,
                    labelText: S.current.inputPassword,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        final login = _controllerEmail.text.trim();
                        final userName = _controllerUsername.text.trim();
                        final password = _controllerPassword.text.trim();
                        context.read<RegistrationBloc>().add(RegistrationEvent.register(
                            login: login, password: password, userName: userName));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        fixedSize: const Size(320, 50),
                        textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text(S.current.signUp),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
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
