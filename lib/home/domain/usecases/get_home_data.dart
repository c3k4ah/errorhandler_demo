import 'package:dartz/dartz.dart';
import 'package:errorhandler_demo/core/error/failure.dart';
import 'package:errorhandler_demo/home/domain/entities/home_data_entity.dart';
import 'package:errorhandler_demo/home/domain/repository/home_repository.dart';

import '../../../core/usecase/usecase.dart';

class GetBitCoinDataUseCase extends UseCase<BitCoinDataEntity, NoParams> {
  final HomeRepository domainRepo;

  GetBitCoinDataUseCase(this.domainRepo);

  @override
  Future<Either<Failure, BitCoinDataEntity>> call(NoParams params) async {
    return await domainRepo.getBitCoinData();
  }
}
