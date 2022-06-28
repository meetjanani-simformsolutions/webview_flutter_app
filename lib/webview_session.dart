
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
              color: Theme.of(context).colorScheme.primary,
              child: const Text(
                "Check Platform",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print(_jsHelper.getPlatformFromJS());
              },
            ),
            const SizedBox(height: 16),
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                "JS Promise",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                print("Calling JS promise");
                String dataFromJS = await _jsHelper.callJSPromise();
                print(dataFromJS);
              },
            ),
          ],
        ),
      ),
    );
  }

}
