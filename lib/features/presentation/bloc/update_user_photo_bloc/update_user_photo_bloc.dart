import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/repositories/i_user_repository.dart';
import 'package:bbt/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:bbt/service_locator.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

part 'update_user_photo_bloc.freezed.dart';

class UpdateUserPhotoBloc extends Bloc<UpdateUserPhotoEvent, UpdateUserPhotoState> {
  final IUserRepository repository;
  final ImagePicker picker;

  UpdateUserPhotoBloc({
    required this.repository,
    required this.picker,
  }) : super(const UpdateUserPhotoState.empty()) {
    on<UpdateUserPhotoEvent>(
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
    emit(const UpdateUserPhotoState.updating());

    Uint8List? bytes;
    ParseFileBase? parseFile;
    // final uiSettings = [
    //   AndroidUiSettings(toolbarTitle: event.toolbarTitle),
    //   IOSUiSettings(title: event.toolbarTitle),
    // ];

    try {
      log(event.source.toString());
      if (kIsWeb) {
        final result =
            await FilePicker.platform.pickFiles(type: FileType.any, allowMultiple: false);

        if (result != null && result.files.isNotEmpty) {
        } else {
          emit(const UpdateUserPhotoState.empty());

          return;
        }
        bytes = result.files.first.bytes;
        parseFile = ParseWebFile(bytes, name: result.files.first.name);
      } else {
        final XFile? image = await picker.pickImage(source: event.source);

        if (image == null) {
          emit(const UpdateUserPhotoState.empty());

          return;
        }
        final file = File(image.path);
        parseFile = ParseFile(file);
        bytes = await file.readAsBytes();
      }
    } on PlatformException {
      emit(const UpdateUserPhotoState.empty());
    }

    if (bytes == null) {
      emit(const UpdateUserPhotoState.done());

      return;
    }
    // final decodedImage = img.decodeImage(bytes);
    // final imageAfterResize = Uint8List.fromList(img.encodeJpg(decodedImage!));

    final failureOrString = await repository.updatePhoto(parseFile!, event.id);

    failureOrString
        .fold((failure) => emit(UpdateUserPhotoState.error(error: mapFailureToMessage(failure))),
            (photo) {
      emit(const UpdateUserPhotoState.done());
      sl<AuthBloc>().add(AuthEvent.updatePhoto(photo));
    });
  }

  FutureOr _onRemoveEvent(
    _RemoveByIdEvent event,
    Emitter emit,
  ) async {
    emit(const UpdateUserPhotoState.updating());
    final failureOrString = await repository.removePhoto(event.id);

    failureOrString
        .fold((failure) => emit(UpdateUserPhotoState.error(error: mapFailureToMessage(failure))),
            (photo) {
      emit(const UpdateUserPhotoState.done());
      sl<AuthBloc>().add(AuthEvent.updatePhoto(photo));
    });
  }
}

@freezed
class UpdateUserPhotoState with _$UpdateUserPhotoState {
  const UpdateUserPhotoState._();

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

  const factory UpdateUserPhotoState.empty() = _EmptyProfilePhotoState;

  const factory UpdateUserPhotoState.updating() = _UpdatingProfilePhotoState;

  const factory UpdateUserPhotoState.canceled() = _CanceledProfilePhotoState;

  const factory UpdateUserPhotoState.done() = _DoneProfilePhotoState;

  const factory UpdateUserPhotoState.error({
    required String error,
  }) = _ErrorProfilePhotoState;
}

@freezed
class UpdateUserPhotoEvent with _$UpdateUserPhotoEvent {
  const UpdateUserPhotoEvent._();

  const factory UpdateUserPhotoEvent.editById(
    String id,
    ImageSource source,
    String toolbarTitle,
  ) = _EditByIdEvent;

  const factory UpdateUserPhotoEvent.removeById(String id) = _RemoveByIdEvent;
}
