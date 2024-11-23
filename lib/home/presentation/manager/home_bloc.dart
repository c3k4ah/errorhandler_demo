import 'package:equatable/equatable.dart';
import 'package:errorhandler_demo/home/domain/entities/home_data_entity.dart';
import 'package:errorhandler_demo/home/domain/usecases/get_home_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/usecase/usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetBitCoinDataUseCase getBitCoinDataUseCase;

  HomeBloc(
    this.getBitCoinDataUseCase,
  ) : super(const InitialHomeState()) {
    on<GetBitCoinDataEvent>(_onGetBitCoinData);
  }

  Future<void> _onGetBitCoinData(
    GetBitCoinDataEvent event,
    Emitter<HomeState> emit,
  ) async {

    emit(state.copyWith(status: HomeStatus.loading));
    
    final res = await getBitCoinDataUseCase(NoParams());
    
    res.fold(
      (failure) => emit(
        state.copyWith(
          status: HomeStatus.error,
          errorMessage: failure.message,
        ),
      ),
      (data) => emit(
        state.copyWith(
          status: HomeStatus.loaded,
          data: data,
        ),
        
      ),
    );
  }
}
