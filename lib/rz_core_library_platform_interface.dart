import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rz_core_library_method_channel.dart';

abstract class RzCoreLibraryPlatform extends PlatformInterface {
  /// Constructs a RzCoreLibraryPlatform.
  RzCoreLibraryPlatform() : super(token: _token);

  static final Object _token = Object();

  static RzCoreLibraryPlatform _instance = MethodChannelRzCoreLibrary();

  /// The default instance of [RzCoreLibraryPlatform] to use.
  ///
  /// Defaults to [MethodChannelRzCoreLibrary].
  static RzCoreLibraryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RzCoreLibraryPlatform] when
  /// they register themselves.
  static set instance(RzCoreLibraryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
