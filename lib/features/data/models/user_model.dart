// import 'package:bbt_kirov_app/features/authentication/domain/entities/user_entity.dart';
// import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

// class UserModel extends UserEntity {
//   final String uid;
//   final String? displayName;
//   final String? photoURL;
//   final String? email;

//   const UserModel(
//       {required this.uid, required this.displayName, required this.photoURL, required this.email})
//       : super(uid: uid, displayName: displayName, photoURL: photoURL, email: email);

//   factory UserModel.fromDb(ParseUser user) {
//     return UserModel(
//       uid: user.get<String>('objectId')!,
//       displayName: user.get<String>('username'),
//       photoURL: user.get<ParseFile>('userphoto')?.url ?? '',
//       email: user.get<String>('email'),
//     );
//   }
// }
