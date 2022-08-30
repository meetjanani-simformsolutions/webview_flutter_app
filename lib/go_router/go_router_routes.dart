import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/go_router/page_2_screen.dart';
import 'package:webview_flutter_app/go_router/page_3_screen.dart';
import 'package:webview_flutter_app/responsive/courses_page.dart';

class GoRoutes {
  static GoRouter router = GoRouter(
      urlPathStrategy: UrlPathStrategy.path,
      routes: [
        GoRoute(
            path: '/',
            name: '/',
            builder: (BuildContext context, GoRouterState state) =>
                CoursesPage(),
            routes: [
              GoRoute(
                  path: Page1Screen.route,
                  name: Page1Screen.route,
                  builder: (BuildContext context, GoRouterState state) =>
                      Page1Screen(),
                  routes: [
                    GoRoute(
                        path: Page2Screen.route,
                        name: Page2Screen.route,
                        builder: (BuildContext context, GoRouterState state) =>
                            Page2Screen(),
                        routes: [
                          GoRoute(
                            path: Page3Screen.route,
                            name: Page3Screen.route,
                            builder:
                                (BuildContext context, GoRouterState state) =>
                                    Page3Screen(),
                          ),
                        ]),
                  ])
            ]),
      ],
      errorBuilder: (context, state) =>
          Center(child: Text('Opps, Page is not available')),
      redirect: (state) {
        print('Hello, redirect');
        return null;
      });
}
