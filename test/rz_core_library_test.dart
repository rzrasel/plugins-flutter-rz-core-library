import 'package:flutter_test/flutter_test.dart';
import 'package:rz_core_library/rz_core_library.dart';
import 'package:rz_core_library/rz_core_library_platform_interface.dart';
import 'package:rz_core_library/rz_core_library_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRzCoreLibraryPlatform
    with MockPlatformInterfaceMixin
    implements RzCoreLibraryPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RzCoreLibraryPlatform initialPlatform = RzCoreLibraryPlatform.instance;

  test('$MethodChannelRzCoreLibrary is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRzCoreLibrary>());
  });

  test('getPlatformVersion', () async {
    //RzCoreLibrary rzCoreLibraryPlugin = RzCoreLibrary();
    MockRzCoreLibraryPlatform fakePlatform = MockRzCoreLibraryPlatform();
    RzCoreLibraryPlatform.instance = fakePlatform;

    //expect(await rzCoreLibraryPlugin.getPlatformVersion(), '42');
  });
}
