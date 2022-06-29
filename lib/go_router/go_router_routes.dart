import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/go_router/page_2_screen.dart';
import 'package:webview_flutter_app/go_router/page_3_screen.dart';

class GoRoutes {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => Page1Screen(),
      ),
      GoRoute(
        path: Page1Screen.route,
        builder: (BuildContext context, GoRouterState state) => Page1Screen(),
      ),
      GoRoute(
        path: Page2Screen.route,
        builder: (BuildContext context, GoRouterState state) => Page2Screen(),
      ),
      GoRoute(
        path: Page3Screen.route,
        builder: (BuildContext context, GoRouterState state) => Page3Screen(),
      ),
    ],
  );
}
