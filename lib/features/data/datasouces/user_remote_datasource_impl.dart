import 'dart:developer';

import 'package:bbt/core/error/exception.dart';
import 'package:bbt/features/data/i_datasources/i_user_remote_datasorce.dart';
import 'package:bbt/features/domain/entities/user_entity/user_entity.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class UserRemoteDatasourceImpl extends IUserRemoteDatasource {
  @override
  Future<String> userRegister(
      {required String userName, required String password, required String login}) async {
    final parseUser = ParseUser.createUser(login, password, login);
    final response = await parseUser.signUp();

    if (response.success) {
      final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('_User'))
        ..whereEqualTo('username', login);
      final apiResponse = await parseQuery.query();
      if (apiResponse.success && apiResponse.results != null) {
        final user = (apiResponse.results as List<ParseObject>).first..set('displayName', userName);
        final response = await user.save();
        if (response.success) {
          log('User was successfully register!');
          return 'Success';
        } else {
          log(apiResponse.error!.message);
          throw ServerException();
        }
      } else {
        log(apiResponse.error!.message);
        throw ServerException();
      }
    } else {
      log(response.error!.message);
      throw ServerException();
    }
  }

  @override
  Future<UserEntity> userLogin({required String login, required String password}) async {
    final parseUser = ParseUser(login, password, null);
    UserEntity user = UserEntity.empty();
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('_User'))
      ..whereEqualTo('username', login);
    final apiResponse = await parseQuery.query();

    final response = await parseUser.login();

    if (response.success) {
      if (apiResponse.success && apiResponse.results != null) {
        user = UserEntity.fromDb((apiResponse.results as List<ParseObject>).first);
      } else {
        log(apiResponse.error!.message);
        throw ServerException();
      }

      return user;
    } else {
      log(response.error!.message);
      throw ServerException();
    }
  }

  @override
  Future<UserEntity> userLogout() async {
    final parseUser = await ParseUser.currentUser() as ParseUser;
    final response = await parseUser.logout();
    final user = UserEntity.empty();

    if (response.success) {
    } else {
      log(response.error!.message);
    }

    return user;
  }

  @override
  Future<UserEntity> getUser(String id) async {
    UserEntity user = UserEntity.empty();
    final QueryBuilder<ParseObject> parseQuery = QueryBuilder<ParseObject>(ParseObject('_User'))
      ..whereEqualTo('objectId', id);
    final apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      user = UserEntity.fromDb((apiResponse.results as List<ParseObject>).first);
    } else {
      log(apiResponse.error!.message);
      throw ServerException();
    }

    return user;
  }

  @override
  Future<void> updateDisplayName(String id, String newName) async {
    final todo = ParseObject('_User')
      ..objectId = id
      ..set('displayName', newName);
    await todo.save();
  }

  @override
  Future<void> updatePassword(String id, String newPassword) async {
    final todo = ParseObject('_User')
      ..objectId = id
      ..set('password', newPassword);
    await todo.save();
  }
}
