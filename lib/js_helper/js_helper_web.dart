import 'dart:js' as js;
import 'dart:js_util';

import 'js_promise_library.dart';



class JSHelper {
  String getPlatformFromJS() {
    return js.context.callMethod('getPlatform');
  }

  Future<String> callJSPromise() async {
    return await promiseToFuture(jsPromiseFunction("Hello JavaScript, from flutter web app"));
  }
}