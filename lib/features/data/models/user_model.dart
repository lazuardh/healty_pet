import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String uid;
  String email;

  UserModel({
    required this.uid,
    required this.email,
  });

  factory UserModel.fromUserCredential(UserCredential userCredential) {
    return UserModel(
      uid: userCredential.user?.uid ?? '',
      email: userCredential.user?.email ?? '',
    );
  }
}
