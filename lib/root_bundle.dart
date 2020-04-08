import 'dart:async';

import 'package:flutter/services.dart';

class RootBundle {
  static const MethodChannel _channel =
      const MethodChannel('root_bundle');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
