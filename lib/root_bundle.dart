import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class RootBundle {
  static const MethodChannel _channel = const MethodChannel('root_bundle');

  static Future<String> get path async {
    String path;
    if (kIsWeb) {
      path = 'assets/';
    } else if (Platform.isIOS) {
      path = await _channel.invokeMethod('getPath');
    } else if (Platform.isAndroid) {
      path = 'file:///android_asset/flutter_assets/';
    }
    return path;
  }
}
