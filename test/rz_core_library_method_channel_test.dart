import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rz_core_library/rz_core_library_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelRzCoreLibrary platform = MethodChannelRzCoreLibrary();
  const MethodChannel channel = MethodChannel('rz_core_library');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
