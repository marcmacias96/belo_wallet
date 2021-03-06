import 'package:auto_route/annotations.dart';
import 'package:crypto_belo/presentation/pages/convert/widgets/success_or_fail_page.dart';
import 'package:crypto_belo/presentation/pages/layout/layout_page.dart';
import 'package:crypto_belo/presentation/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  // you get an animation object and a widget
  // make your own transition
  return FadeTransition(opacity: animation, child: child);
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      fullMatch: false,
      page: WelcomePage,
      transitionsBuilder: zoomInTransition,
      fullscreenDialog: true,
      initial: true,
    ),
    CustomRoute(
      page: LayoutPage,
      transitionsBuilder: zoomInTransition,
      fullscreenDialog: false,
    ),
    CustomRoute(
      page: SuccessOrFailPage,
      transitionsBuilder: zoomInTransition,
      fullscreenDialog: true,
    ),
  ],
)
class $AppRouter {}
