import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rz_core_library_platform_interface.dart';

/// An implementation of [RzCoreLibraryPlatform] that uses method channels.
class MethodChannelRzCoreLibrary extends RzCoreLibraryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rz_core_library');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
