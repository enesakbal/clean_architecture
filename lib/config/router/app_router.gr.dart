// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const HomeView());
    },
    CounterExampleRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const CounterExampleView());
    },
    CatRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const CatView());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(CounterExampleRoute.name, path: '/example1'),
        RouteConfig(CatRoute.name, path: '/example2')
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [CounterExampleView]
class CounterExampleRoute extends PageRouteInfo<void> {
  const CounterExampleRoute()
      : super(CounterExampleRoute.name, path: '/example1');

  static const String name = 'CounterExampleRoute';
}

/// generated route for
/// [CatView]
class CatRoute extends PageRouteInfo<void> {
  const CatRoute() : super(CatRoute.name, path: '/example2');

  static const String name = 'CatRoute';
}
