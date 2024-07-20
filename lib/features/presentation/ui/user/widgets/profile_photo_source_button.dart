import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bbt/features/presentation/bloc/update_user_photo_bloc/update_user_photo_bloc.dart';
import 'package:bbt/features/presentation/ui/widgets/expand_tap_widget.dart';
import 'package:bbt/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfilePhotoSourceButton extends StatelessWidget {
  final String id;
  final String text;
  final ImageSource source;

  const ProfilePhotoSourceButton({
    Key? key,
    required this.id,
    required this.source,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizedStrings = S.current;

    return ExpandTapWidget(
      tapPadding: const EdgeInsets.only(right: 100, top: 20, bottom: 20),
      onTap: () async {
        if (source == ImageSource.camera) {
          final status = await Permission.camera.status;
          log(status.toString());
          if (!status.isGranted) {
            final secondStatus = await Permission.camera.request();
            if (!secondStatus.isGranted) {
              await requestPermission(
                context,
                title: localizedStrings.cameraPermissionDenied,
                body: localizedStrings.turnOnCameraPermission,
              );
            } else {
              editPhoto(context, source, localizedStrings.toolbarEditPhotoTitle);
            }
          } else {
            editPhoto(context, source, localizedStrings.toolbarEditPhotoTitle);
          }
        } else if (!kIsWeb && source == ImageSource.gallery && Platform.isIOS) {
          final status = await Permission.photos.request();
          log(status.toString());
          if (!status.isGranted && !status.isLimited) {
            final secondStatus = await Permission.photos.request();
            log(secondStatus.toString());
            if (!secondStatus.isGranted && !status.isLimited) {
              log('secondStatus.toString()');
              await requestPermission(
                context,
                title: localizedStrings.photoPermissionDenied,
                body: localizedStrings.turnOnPhotoPermission,
              );
            } else {
              editPhoto(context, source, localizedStrings.toolbarEditPhotoTitle);
            }
          } else {
            editPhoto(context, source, localizedStrings.toolbarEditPhotoTitle);
          }
        } else {
          editPhoto(context, source, localizedStrings.toolbarEditPhotoTitle);
        }
        Navigator.of(context).pop();
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
                    source == ImageSource.gallery ? Icons.photo : Icons.photo_camera,
                    color: theme.primaryColor,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(text, style: TextStyle(fontSize: 18, color: theme.primaryColor)),
            ],
          ),
        ],
      ),
    );
  }

  void editPhoto(
    BuildContext ctx,
    ImageSource imageSource,
    String toolbarTitle,
  ) {
    ctx
        .read<UpdateUserPhotoBloc>()
        .add(UpdateUserPhotoEvent.editById(id, imageSource, toolbarTitle));
  }

  Future<void> requestPermission(
    BuildContext context, {
    required String title,
    required String body,
  }) async {
    final status = await Permission.camera.status;

    if (!status.isGranted) {
      _showPermissionSettingsDialog(context, title, body);
    }
  }

  void _showPermissionSettingsDialog(BuildContext context, String title, String body) {
    final localizedStrings = S.current;

    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text(localizedStrings.cancel),
          ),
          TextButton(
            onPressed: () {
              openAppSettings();
              Navigator.pop(context);
            },
            child: Text(localizedStrings.settings),
          ),
        ],
      ),
    );
  }
}
