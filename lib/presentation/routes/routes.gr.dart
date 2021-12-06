// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/convert/widgets/success_or_fail_page.dart' as _i3;
import '../pages/layout/layout_page.dart' as _i2;
import '../pages/welcome/welcome_page.dart' as _i1;
import 'routes.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.WelcomePage(),
          fullscreenDialog: true,
          transitionsBuilder: _i6.zoomInTransition,
          opaque: true,
          barrierDismissible: false);
    },
    LayoutRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LayoutPage(),
          transitionsBuilder: _i6.zoomInTransition,
          opaque: true,
          barrierDismissible: false);
    },
    SuccessOrFailRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.SuccessOrFailPage(),
          fullscreenDialog: true,
          transitionsBuilder: _i6.zoomInTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(WelcomeRoute.name, path: '/'),
        _i4.RouteConfig(LayoutRoute.name, path: '/layout-page'),
        _i4.RouteConfig(SuccessOrFailRoute.name, path: '/success-or-fail-page')
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.LayoutPage]
class LayoutRoute extends _i4.PageRouteInfo<void> {
  const LayoutRoute() : super(name, path: '/layout-page');

  static const String name = 'LayoutRoute';
}

/// generated route for [_i3.SuccessOrFailPage]
class SuccessOrFailRoute extends _i4.PageRouteInfo<void> {
  const SuccessOrFailRoute() : super(name, path: '/success-or-fail-page');

  static const String name = 'SuccessOrFailRoute';
}
