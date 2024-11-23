part of 'injection.dart';

void usecases() {
  getIt.registerLazySingleton<GetBitCoinDataUseCase>(
    () => GetBitCoinDataUseCase(
      getIt(),
    ),
  );
}
