import 'package:healtypet_application/features/domain/entity/user_entity.dart';
import 'package:healtypet_application/features/domain/repository/auth_repository.dart';

class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<UserEntity?> authenticate(String email, String password) async {
    return _authRepository.signInWithEmail(email, password);
  }

  Future<void> logout() async {
    return _authRepository.logout();
  }
}
