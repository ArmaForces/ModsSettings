#define COMPONENT settings
#include "\z\afms\addons\main\script_mod.hpp"

#define DEBUG_MODE_FULL
#define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_SETTINGS
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_SETTINGS
    #define DEBUG_SETTINGS DEBUG_SETTINGS_SETTINGS
#endif

#define DEBUG_SYNCHRONOUS
#include "\z\afms\addons\main\script_macros.hpp"

#define HASH_NULL ([] call CBA_fnc_hashCreate)
