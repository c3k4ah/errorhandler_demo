import 'package:dio/dio.dart';
import 'package:errorhandler_demo/home/data/datasources/home_remote_datasource.dart';
import 'package:errorhandler_demo/home/domain/usecases/get_home_data.dart';
import 'package:errorhandler_demo/home/presentation/manager/home_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/shared_preference_key.dart';
import '../core/source/interceptors/request_interceptor.dart';
import '../core/source/remote/remote_source.dart';
import '../core/source/remote/remote_source_impl.dart';
import '../home/data/repositories/repository_impl.dart';
import '../home/domain/repository/home_repository.dart';

part 'injection_bloc.dart';

part 'injection_usecase.dart';

part 'injection_repository.dart';

part 'injection_datasource.dart';

final getIt = GetIt.instance;

Future<void> initInjection() async {
  blocs();
  await service();
  datasources();
  repositories();
  usecases();
  externalResources();
}

Future<void> service() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.coindesk.com/${ApiKey.apiVersion}/l',
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    ),
  );
  dio.interceptors.add(RequestInterceptor(dio));
  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
    ),
  );
  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl(dio));
  getIt.registerSingleton(dio);
}

void externalResources() {}
