import 'package:errorhandler_demo/core/source/remote/remote_source.dart';
import 'package:errorhandler_demo/home/data/models/home_data_model.dart';

abstract class HomeRemoteDataSource {
  Future<BitCoinDataModel> getBitCoinData();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final RemoteSource remoteSource;

  HomeRemoteDataSourceImpl(this.remoteSource);

  @override
  Future<BitCoinDataModel> getBitCoinData() async {
    final result = await remoteSource.get('bpi/currentprice.json');

    BitCoinDataModel data = BitCoinDataModel.fromJson(result.data);

    return data;
  }
}
