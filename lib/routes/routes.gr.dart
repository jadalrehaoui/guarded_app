// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$$RootRouter extends RootStackRouter {
  _$$RootRouter([GlobalKey<NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    RecoveryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const RecoveryPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        RouteConfig(
          RecoveryRoute.name,
          path: '/recovery-page',
        ),
      ];
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [RecoveryPage]
class RecoveryRoute extends PageRouteInfo<void> {
  const RecoveryRoute()
      : super(
          RecoveryRoute.name,
          path: '/recovery-page',
        );

  static const String name = 'RecoveryRoute';
}
