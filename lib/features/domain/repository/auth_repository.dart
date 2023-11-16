import 'package:healtypet_application/features/domain/entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity?> signInWithEmail(String email, String password);
  Future<void> logout();
}
