
import 'package:flutter/material.dart';
import 'package:webview_flutter_app/go_router/go_router_routes.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/normal_route/normal_routes.dart';
import 'package:webview_flutter_app/responsive_widget.dart';
import 'package:webview_flutter_app/webview_session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// JS Promise
    /*return MaterialApp(
      title: 'Flutter web session',
      home: WebViewSession(),
    );*/
    /// NORMAL ROUTE
    /*return MaterialApp(
      title: 'Flutter web session',
      routes: NormalRoutes.routes,
      initialRoute: Page1Screen.route,
    );*/
    /// GO ROUTER
    return MaterialApp.router(
      routeInformationParser: GoRoutes.router.routeInformationParser,
      routerDelegate: GoRoutes.router.routerDelegate,
      title: 'Flutter web session',
    );
  }
}