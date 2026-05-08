#ifndef FLUTTER_PLUGIN_RZ_CORE_LIBRARY_PLUGIN_H_
#define FLUTTER_PLUGIN_RZ_CORE_LIBRARY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace rz_core_library {

class RzCoreLibraryPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RzCoreLibraryPlugin();

  virtual ~RzCoreLibraryPlugin();

  // Disallow copy and assign.
  RzCoreLibraryPlugin(const RzCoreLibraryPlugin&) = delete;
  RzCoreLibraryPlugin& operator=(const RzCoreLibraryPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace rz_core_library

#endif  // FLUTTER_PLUGIN_RZ_CORE_LIBRARY_PLUGIN_H_
