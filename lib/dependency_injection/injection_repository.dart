part of 'injection.dart';

void repositories() {
  // Repositories
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      getIt(),
    ),
  );
}
