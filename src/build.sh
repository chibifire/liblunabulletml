cd thirdparty/godot && scons platform=osx target=release_debug separate_debug_symbols=true -j6 use_lto=no gdnative_wrapper=yes deprecated=no && cd ../../ && thirdparty/godot/bin/godot.mac.opt.tools.64 --gdnative-generate-json-api thirdparty/godot-cpp/godot_api.json && cd thirdparty/godot-cpp && scons -j6 use_custom_api_file=yes custom_api_file=godot_api.json platform=osx generate_bindings=yes target=release && cd ../../
cd thirdparty/godot-cpp && scons -j6 platform=osx generate_bindings=yes target=release && cd ../../
