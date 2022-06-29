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
        path: '/page2',
        builder: (BuildContext context, GoRouterState state) => Page2Screen(),
      ),
      GoRoute(
        path: '/page3',
        builder: (BuildContext context, GoRouterState state) => Page3Screen(),
      ),
    ],
  );
}
