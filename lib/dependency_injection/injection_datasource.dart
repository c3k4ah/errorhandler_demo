part of 'injection.dart';

void datasources() {
  // Datasources
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(
      getIt(),
    ),
  );
}
