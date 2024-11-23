import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/home_data_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, BitCoinDataEntity>> getBitCoinData();
}
