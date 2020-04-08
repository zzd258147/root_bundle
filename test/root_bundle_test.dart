import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:root_bundle/root_bundle.dart';

void main() {
  const MethodChannel channel = MethodChannel('root_bundle');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return null;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RootBundle.path, null);
  });
}
