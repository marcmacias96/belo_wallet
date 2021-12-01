// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/layout/layout_page.dart' as _i2;
import '../pages/welcome/welcome_page.dart' as _i1;
import 'routes.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.WelcomePage(),
          fullscreenDialog: true,
          transitionsBuilder: _i5.zoomInTransition,
          opaque: true,
          barrierDismissible: false);
    },
    LayoutRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LayoutPage(),
          transitionsBuilder: _i5.zoomInTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(WelcomeRoute.name, path: '/'),
        _i3.RouteConfig(LayoutRoute.name, path: '/layout-page')
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i3.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.LayoutPage]
class LayoutRoute extends _i3.PageRouteInfo<void> {
  const LayoutRoute() : super(name, path: '/layout-page');

  static const String name = 'LayoutRoute';
}
