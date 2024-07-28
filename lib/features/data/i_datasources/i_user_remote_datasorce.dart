import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

abstract class IUserRemoteDatasource {
  Future<UserEntity> userLogin({required String login, required String password});
  Future<({String login, String password})> userRegister(
      {required String login, required String userName, required String password});
  Future<UserEntity> userLogout();
  Future<UserEntity> getUser(String id);
  Future<void> updateDisplayName(String id, String newName);
  Future<void> updatePassword(String id, String newName);
  Future<String> updatePhoto(ParseFileBase file, String id);
  Future<String> removePhoto(String id);
  Future<String?> getPhoto(String id);
}
