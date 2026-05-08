#include "include/rz_core_library/rz_core_library_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "rz_core_library_plugin.h"

void RzCoreLibraryPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  rz_core_library::RzCoreLibraryPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
