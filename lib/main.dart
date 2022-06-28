
import 'package:flutter/material.dart';
import 'package:webview_flutter_app/webview_session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter web session',
      home: WebViewSession(),
    );
  }
}