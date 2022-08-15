import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterbloc/presentation/view/cat/cat_view.dart';
import 'package:flutterbloc/presentation/view/counter_example/counter_example_view.dart';
import 'package:flutterbloc/presentation/view/home/home_view.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  // * for names
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeView,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: CounterExampleView,
      path: '/example1',
    ),
    AutoRoute(
      page: CatView,
      path: '/example2',
    ),
  ],
)

/// `AppRouter` is a class that extends `_` and is used to generate a `Router` object
class AppRouter extends _$AppRouter {}
