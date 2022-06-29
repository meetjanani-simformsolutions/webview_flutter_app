import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/go_router/page_2_screen.dart';
import 'package:webview_flutter_app/go_router/page_3_screen.dart';

class NormalRoutes {
  static Map<String, WidgetBuilder> routes = {
    Page1Screen.route: (context) => Page1Screen(),
    Page2Screen.route: (context) => Page2Screen(),
    Page3Screen.route: (context) => Page3Screen(),
  };
}