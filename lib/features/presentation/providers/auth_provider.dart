import 'package:flutter/material.dart';
import 'package:healtypet_application/features/domain/entity/user_entity.dart';
import 'package:healtypet_application/features/domain/usecase/auth_use_case.dart';

class AuthProvider extends ChangeNotifier {
  final AuthUseCase _authUseCase;

  AuthProvider(this._authUseCase);

  bool _isAuth = false;
  bool get isAuth => _isAuth;

  UserEntity? _user;
  UserEntity? get user => _user;

  void setAuthStatus(bool status) {
    _isAuth = status;
    notifyListeners();
  }

  Future<void> loginWithEmail(String email, String password) async {
    UserEntity? user = await _authUseCase.authenticate(email, password);
    if (user != null) {
      _user = user;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _authUseCase.logout();
    _user = null;
    notifyListeners();
  }
}
