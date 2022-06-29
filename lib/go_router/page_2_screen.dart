import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_app/go_router/page_1_screen.dart';
import 'package:webview_flutter_app/go_router/page_3_screen.dart';
class Page2Screen extends StatelessWidget {
  static const String route = '/page2';
  const Page2Screen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Page3Screen.route);
              // context.go(Page3Screen.route);
            },
              onLongPress: (){
                Navigator.of(context).pushNamed(Page1Screen.route);
                // context.go(Page1Screen.route);
              },
              child: Text('Press just once to go on Page 3,\nLong press to go on Page 1')),
        ),
      ),
    );
  }
}
