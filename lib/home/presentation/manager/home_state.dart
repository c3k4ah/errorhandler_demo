part of 'home_bloc.dart';

enum HomeStatus {
  error,
  loaded,
  loading,
  initial,
}

class HomeState extends Equatable {
  final HomeStatus status;
  final String? errorMessage;
  final BitCoinDataEntity? data;

  const HomeState({
    required this.status,
    this.errorMessage,
    this.data,
  });

  HomeState copyWith({
    HomeStatus? status,
    String? errorMessage,
    BitCoinDataEntity? data,
  }) {
    return HomeState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [
        status,
        errorMessage,
        data,
      ];
}

class InitialHomeState extends HomeState {
  const InitialHomeState({
    super.status = HomeStatus.initial,
  });
}
