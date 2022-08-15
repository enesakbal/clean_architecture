import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/config/router/app_router.dart';
import 'package:flutterbloc/presentation/bloc/cats/cat_bloc.dart';
import 'package:flutterbloc/presentation/bloc/counter/counter_bloc.dart';
import 'package:flutterbloc/presentation/bloc/home/home_bloc.dart';

void main() {
  runApp(MyApp());
}

final AppRouter router = AppRouter();
final Dio dio = Dio();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => CatBloc(),
          ),
        ],
        child: MaterialApp.router(
          routeInformationParser: router.defaultRouteParser(),
          routerDelegate: router.delegate(),
        ),
      ),
    );
  }
}
