import 'package:errorhandler_demo/home/presentation/manager/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/single_child_widget.dart';

final getIt = GetIt.instance;

List<SingleChildWidget> get blocProviders => [
      BlocProvider(
        lazy: false,
        create: (context) => getIt<HomeBloc>()..add(GetBitCoinDataEvent()),
      ),
    ];
