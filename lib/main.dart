
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:webview_flutter_app/go_router/go_router_routes.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/normal_route/normal_routes.dart';
import 'package:webview_flutter_app/responsive/courses_page.dart';
import 'package:webview_flutter_app/responsive/responsive_grid.dart';
import 'package:webview_flutter_app/responsive_widget.dart';
import 'package:webview_flutter_app/webview_session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// JS Promise
    return MaterialApp(
      title: 'Flutter web session',
      home: WebViewSession(), // CoursesPage()
      builder: responsiveBuilder,
    );
    /// NORMAL ROUTE
    return MaterialApp(
      builder: responsiveBuilder,
      title: 'Flutter web session',
      routes: NormalRoutes.routes,
      initialRoute: Page1Screen.route,
    );
    /// GO ROUTER
    return MaterialApp.router(
      routeInformationParser: GoRoutes.router.routeInformationParser,
      routerDelegate: GoRoutes.router.routerDelegate,
      title: 'Flutter web session',
      builder: responsiveBuilder,
    );
  }


  Widget responsiveBuilder (BuildContext context, Widget child){
    return ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, child),
      maxWidth: MediaQuery.of(context).size.width,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(350, name: MOBILE),
        ResponsiveBreakpoint.autoScale(600, name: TABLET),
        ResponsiveBreakpoint.resize(800, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
      ]
    );
  }
}