// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

import 'package:bbt/common/theme/app_colors.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_display_name_bloc/update_display_name_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_password_bloc/update_password_bloc.dart';
import 'package:bbt/features/presentation/bloc/update_user_photo_bloc/update_user_photo_bloc.dart';
import 'package:bbt/features/presentation/navigation/navigation_manager.dart';
import 'package:bbt/features/presentation/ui/authentication/widgets/auth_text_field.dart';
import 'package:bbt/features/presentation/ui/user/widgets/profile_photo_source_button.dart';
import 'package:bbt/features/presentation/ui/widgets/app_snack_bar.dart';
import 'package:bbt/features/presentation/ui/widgets/current_account_picture.dart';
import 'package:bbt/features/presentation/ui/widgets/current_user_builder.dart';
import 'package:bbt/features/presentation/ui/widgets/expand_tap_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditUserPage extends StatefulWidget {
  final PageController? pageController;

  const EditUserPage({super.key, this.pageController});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<EditUserPage> {
  late TextEditingController _controllerUsername;
  late final TextEditingController _controllerPassword;
  late final TextEditingController _controllerConfirmPassword;
  late final FocusNode _focusNodeUsername;
  late final FocusNode _focusNodePassword;
  late final FocusNode _focusNodeConfirmPassword;

  @override
  void initState() {
    _controllerUsername = TextEditingController();
    _controllerPassword = TextEditingController();
    _controllerConfirmPassword = TextEditingController();
    _focusNodeUsername = FocusNode();
    _focusNodePassword = FocusNode();
    _focusNodeConfirmPassword = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: SizedBox(
        width: kIsWeb ? 512 : null,
        height: kIsWeb ? MediaQuery.sizeOf(context).height : null,
        child: Scaffold(
          appBar: kIsWeb
              ? null
              : AppBar(
                  title: Text(S.current.editUserInfo),
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: NavigationManager.instance.pop,
                    icon: const Icon(Icons.close),
                  ),
                ),
          body: SingleChildScrollView(
            child: BlocListener<UpdateDisplayNameBloc, UpdateDisplayNameState>(
              listener: (context, state) {
                state.mapOrNull(
                  updated: (state) {
                    final newName = _controllerUsername.text.trim();
                    context.read<AuthBloc>().add(AuthEvent.updateName(newName));
                    AppSnackBar.showSnack(context, S.current.nameSuccessfulChange);
                  },
                );
              },
              child: BlocListener<UpdatePasswordBloc, UpdatePasswordState>(
                listener: (context, state) {
                  state.mapOrNull(
                    updated: (state) {
                      AppSnackBar.showSnack(context, S.current.passwordSuccessfulChange);
                    },
                  );
                },
                child: BlocListener<UpdateUserPhotoBloc, UpdateUserPhotoState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      done: (state) async {
                        AppSnackBar.showSnack(context, S.current.photoSuccessfulChange);
                        if (kIsWeb) {
                          await Future.delayed(const Duration(milliseconds: 500), () {
                            html.window.location.reload();
                          });
                        }
                      },
                      error: (state) {
                        AppSnackBar.showSnack(context, S.current.error);
                      },
                    );
                  },
                  child: CurrentUserBuilder(builder: (user) {
                    _controllerUsername = TextEditingController(text: user.displayName);

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: kIsWeb ? 0 : 16),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (kIsWeb) ...[
                                MaterialButton(
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  shape: const CircleBorder(),
                                  onPressed: () => widget.pageController!.jumpToPage(0),
                                  minWidth: 36,
                                  padding: const EdgeInsets.all(6),
                                  child: const Icon(
                                    Icons.close,
                                    color: AppColors.greyColor2,
                                  ),
                                ),
                                const SizedBox(
                                  width: 44,
                                )
                              ],
                              CurrentAccountPicture(
                                userName: user.displayName,
                                photoURL: user.photoURL,
                                borderRadius: 20,
                                size: 150,
                                isDrawer: false,
                                onTap: () {
                                  user.photoURL.isNotEmpty
                                      ? showEditProfileImageBottomSheet(user.uid)
                                      : choiceSourcePhotoBottomSheet(user.uid);
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 60),
                          AuthTextField(
                            labelText: S.current.editUserName,
                            controller: _controllerUsername,
                            focusNode: _focusNodeUsername,
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                final newName = _controllerUsername.text.trim();
                                context.read<UpdateDisplayNameBloc>().add(
                                    UpdateDisplayNameEvent.update(id: user.uid, newName: newName));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Theme.of(context).primaryColor,
                                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                                shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Text(S.current.save),
                            ),
                          ),
                          const SizedBox(height: 60),
                          Divider(
                            color: Theme.of(context).primaryColorDark,
                            thickness: 1,
                          ),
                          const SizedBox(height: 60),
                          AuthTextField(
                            labelText: S.current.editPassword,
                            controller: _controllerPassword,
                            focusNode: _focusNodePassword,
                            obscureText: true,
                          ),
                          const SizedBox(height: 8),
                          AuthTextField(
                            labelText: S.current.confirmPassword,
                            controller: _controllerConfirmPassword,
                            focusNode: _focusNodeConfirmPassword,
                            obscureText: true,
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                final password = _controllerPassword.text.trim();
                                final confirmPassword = _controllerConfirmPassword.text.trim();

                                if (password == confirmPassword) {
                                  context.read<UpdatePasswordBloc>().add(
                                      UpdatePasswordEvent.update(id: user.uid, password: password));
                                } else {
                                  AppSnackBar.showSnack(context, S.current.passwordsNotMatch);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Theme.of(context).primaryColor,
                                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                                shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Text(S.current.save),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showEditProfileImageBottomSheet(String id) {
    FocusManager.instance.primaryFocus?.unfocus();
    final theme = Theme.of(context);
    final localizedStrings = S.current;

    showModalBottomSheet<void>(
      backgroundColor: theme.scaffoldBackgroundColor,
      barrierColor: Colors.black26,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ExpandTapWidget(
                  tapPadding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  onTap: () {
                    Navigator.of(context).pop();
                    choiceSourcePhotoBottomSheet(id);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                size: 18,
                                Icons.photo_camera,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(localizedStrings.uploadNew,
                              style: TextStyle(fontSize: 18, color: theme.primaryColor)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ExpandTapWidget(
                  tapPadding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  onTap: () {
                    Navigator.of(context).pop();
                    context.read<UpdateUserPhotoBloc>().add(UpdateUserPhotoEvent.removeById(id));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                size: 18,
                                Icons.delete,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(localizedStrings.delete,
                              style: TextStyle(fontSize: 18, color: theme.primaryColor)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void choiceSourcePhotoBottomSheet(String id) {
    FocusManager.instance.primaryFocus?.unfocus();
    final theme = Theme.of(context);
    final localizedStrings = S.current;

    showModalBottomSheet<void>(
      backgroundColor: theme.scaffoldBackgroundColor,
      barrierColor: Colors.black26,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProfilePhotoSourceButton(
                  id: id,
                  text: localizedStrings.fromCamera,
                  source: ImageSource.camera,
                ),
                const SizedBox(height: 12),
                ProfilePhotoSourceButton(
                  id: id,
                  text: localizedStrings.fromGallery,
                  source: ImageSource.gallery,
                ),
              ],
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
