import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_app/go_router/page_2_screen.dart';
class Page3Screen extends StatelessWidget {
  static const String route = '/page3';
  const Page3Screen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Page2Screen.route);
              // context.go(Page2Screen.route);
            },
              child: Text('This is Page 3, Go to Page 2')),
        ),
      ),
    );
  }
}
