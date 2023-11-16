import 'package:get_it/get_it.dart';
import 'package:healtypet_application/features/data/datasources/auth_datasource.dart';
import 'package:healtypet_application/features/domain/repository/auth_repository.dart';
import 'package:healtypet_application/features/domain/usecase/auth_use_case.dart';

import '../data/repository/auth_repository_impl.dart';

final GetIt locator = GetIt.instance;

void init() {
  // Register AuthDataSource
  locator.registerLazySingleton(() => AuthDataSource());

  // Register AuthRepository
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(locator<AuthDataSource>()),
  );

  // Register AuthUseCase
  locator.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(locator<AuthRepository>()),
  );
}
