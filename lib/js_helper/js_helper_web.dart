import 'dart:js_util';

import 'js_promise_library.dart';

class JSHelper {
  Future<String> callJSPromise(String message) async {
    return await promiseToFuture(jsPromiseFunction(message));
  }
}
