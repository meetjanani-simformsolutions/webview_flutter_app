import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_app/go_router/page_2_screen.dart';

class Page1Screen extends StatelessWidget {
  static const String route = '/page1';
  const Page1Screen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
            onTap: (){
              // Navigator.of(context).pushNamed(Page2Screen.route);
              context.go(Page2Screen.route);
            },
              child: Text('Page 1 Screen')),
        ),
      ),
    );
  }
}
