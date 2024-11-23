import 'package:errorhandler_demo/home/presentation/manager/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status == HomeStatus.error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Error'),
                backgroundColor: Colors.red,
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: const EdgeInsets.all(5),
              ),
            );
          }
          if (state.status == HomeStatus.loaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Succes'),
                backgroundColor: Colors.green,
                elevation: 10,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.status == HomeStatus.error) {
            return Center(
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
            );
          }
          return Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  state.data?.disclaimer ?? 'NoData',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
