import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';

abstract class IUserRemoteDatasource {
  Future<UserEntity> userLogin({required String login, required String password});
  Future<String> userRegister(
      {required String login, required String userName, required String password});
  Future<UserEntity> userLogout();
  Future<UserEntity> getUser(String id);
  Future<void> updateDisplayName(String id, String newName);
  Future<void> updatePassword(String id, String newName);
}
