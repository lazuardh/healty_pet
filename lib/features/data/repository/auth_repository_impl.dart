import 'package:firebase_auth/firebase_auth.dart';
import 'package:healtypet_application/features/domain/entity/user_entity.dart';
import 'package:healtypet_application/features/domain/repository/auth_repository.dart';

import '../datasources/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDatasource;

  AuthRepositoryImpl(this._authDatasource);

  @override
  Future<UserEntity?> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential =
          await _authDatasource.signInWithEmailAndPassword(
        email,
        password,
      );

      final UserEntity user = UserEntity(
        uid: userCredential.user?.uid ?? '',
        username: '',
        email: userCredential.user?.email ?? '',
        password: password,
      );

      return user;
    } catch (error) {
      print('Error during authentication: $error');
      return null;
    }
  }

  @override
  Future<void> logout() async {
    try {
      return await _authDatasource.signOut();
    } catch (error) {
      print('Error during logout: $error');
    }
  }
}
