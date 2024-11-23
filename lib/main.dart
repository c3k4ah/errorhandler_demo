import 'package:errorhandler_demo/bloc_providers/bloc_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dependency_injection/injection.dart';
import 'home/presentation/pages/home_page.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

  await initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: const MaterialApp(
        title: "Error Handler",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
