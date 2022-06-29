
import 'package:flutter/material.dart';

import 'js_helper/js_helper.dart';

class WebViewSession extends StatefulWidget {
  const WebViewSession();

  @override
  State<WebViewSession> createState() => _WebViewSessionState();
}

class _WebViewSessionState extends State<WebViewSession> {

  final JSHelper _jsHelper = JSHelper();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Web View Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                "JS Promise",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                print("Calling JS promise");
                String dataFromJS = await _jsHelper.callJSPromise("Hello JavaScript, from flutter web app");
                print(dataFromJS);
              },
            ),
          ],
        ),
      ),
    );
  }

}
