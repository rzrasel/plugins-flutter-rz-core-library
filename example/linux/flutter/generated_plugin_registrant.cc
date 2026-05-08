//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <rz_core_library/rz_core_library_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) rz_core_library_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "RzCoreLibraryPlugin");
  rz_core_library_plugin_register_with_registrar(rz_core_library_registrar);
}
