import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:errorhandler_demo/core/error/failure.dart';

import 'package:errorhandler_demo/home/domain/entities/home_data_entity.dart';

import '../../domain/repository/home_repository.dart';
import '../datasources/home_remote_datasource.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remote;

  HomeRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, BitCoinDataEntity>> getBitCoinData() async {
    try {
      final response = await remote.getBitCoinData();

      return Right(response);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          info: e.message,
          code: e.response?.statusCode ?? 400,
        ),
      );
    }
  }
}
