import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/service_locator.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

part 'edit_profile_photo_bloc.freezed.dart';

class UpdateUserPhotoBloc extends Bloc<EditProfilePhotoEvent, EditProfilePhotoState> {
  final IUserRepository repository;
  final ImagePicker picker;

  UpdateUserPhotoBloc({
    required this.repository,
    required this.picker,
  }) : super(const EditProfilePhotoState.empty()) {
    on<EditProfilePhotoEvent>(
      (event, emit) => event.map(
        editById: (event) => _onEditEvent(event, emit),
        removeById: (event) => _onRemoveEvent(event, emit),
      ),
      transformer: droppable(),
    );
  }

  FutureOr _onEditEvent(
    _EditByIdEvent event,
    Emitter emit,
  ) async {
    emit(const EditProfilePhotoState.updating());

    Uint8List? bytes;
    ParseFile? parseFile;
    // final uiSettings = [
    //   AndroidUiSettings(toolbarTitle: event.toolbarTitle),
    //   IOSUiSettings(title: event.toolbarTitle),
    // ];

    try {
      log(event.source.toString());
      final XFile? image = await picker.pickImage(source: event.source);

      if (image == null) {
        emit(const EditProfilePhotoState.empty());

        return;
      }
      final file = File(image.path);
      parseFile = ParseFile(file);
      // final file = await ImageCropper().cropImage(sourcePath: image.path, uiSettings: uiSettings);
      bytes = await file.readAsBytes();
    } on PlatformException {
      emit(const EditProfilePhotoState.empty());
    }

    if (bytes == null) {
      emit(const EditProfilePhotoState.done());

      return;
    }
    // final decodedImage = img.decodeImage(bytes);
    // final imageAfterResize = Uint8List.fromList(img.encodeJpg(decodedImage!));

    final failureOrString = await repository.updatePhoto(parseFile!, event.id);

    failureOrString
        .fold((failure) => emit(EditProfilePhotoState.error(error: mapFailureToMessage(failure))),
            (photo) {
      emit(const EditProfilePhotoState.done());
      sl<AuthBloc>().add(AuthEvent.updatePhoto(photo));
    });
  }

  FutureOr _onRemoveEvent(
    _RemoveByIdEvent event,
    Emitter emit,
  ) async {
    emit(const EditProfilePhotoState.updating());
    final failureOrString = await repository.removePhoto(event.id);

    failureOrString
        .fold((failure) => emit(EditProfilePhotoState.error(error: mapFailureToMessage(failure))),
            (photo) {
      emit(const EditProfilePhotoState.done());
      sl<AuthBloc>().add(AuthEvent.updatePhoto(photo));
    });
  }
}

@freezed
class EditProfilePhotoState with _$EditProfilePhotoState {
  const EditProfilePhotoState._();

  bool get isDone => maybeMap<bool>(
        orElse: () => false,
        done: (_) => true,
      );

  bool get isUpdating => maybeMap<bool>(
        orElse: () => false,
        updating: (_) => true,
      );

  bool get isEmpty => maybeMap<bool>(
        orElse: () => false,
        empty: (_) => true,
      );

  bool get isError => maybeMap<bool>(
        orElse: () => false,
        error: (_) => true,
      );

  const factory EditProfilePhotoState.empty() = _EmptyProfilePhotoState;

  const factory EditProfilePhotoState.updating() = _UpdatingProfilePhotoState;

  const factory EditProfilePhotoState.canceled() = _CanceledProfilePhotoState;

  const factory EditProfilePhotoState.done() = _DoneProfilePhotoState;

  const factory EditProfilePhotoState.error({
    required String error,
  }) = _ErrorProfilePhotoState;
}

@freezed
class EditProfilePhotoEvent with _$EditProfilePhotoEvent {
  const EditProfilePhotoEvent._();

  const factory EditProfilePhotoEvent.editById(
    String id,
    ImageSource source,
    String toolbarTitle,
  ) = _EditByIdEvent;

  const factory EditProfilePhotoEvent.removeById(String id) = _RemoveByIdEvent;
}
