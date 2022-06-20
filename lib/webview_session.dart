
import 'package:flutter/material.dart';

class WebViewSession extends StatefulWidget {
  const WebViewSession();

  @override
  State<WebViewSession> createState() => _WebViewSessionState();
}

class _WebViewSessionState extends State<WebViewSession> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Web View Demo'),
          ),
      body: Container(
        child: Center(
          child: Text('Web View Demo'),
        ),
      ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
            },
            child: Icon(Icons.palette_rounded),
          ),
    ));
  }

}
