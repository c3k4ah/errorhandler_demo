part of 'injection.dart';

void blocs() {
  // Bloc
  getIt.registerLazySingleton<HomeBloc>(
    () => HomeBloc(getIt()),
  );
}
