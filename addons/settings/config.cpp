#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            // we're leaving this empty intentionaly to be the one of the first addons executed via XEH (before CBA Settings)
        };
        authors[] = {"veteran29"};
        author = "ArmaForces";
        VERSION_CONFIG;
    };
    // enables UserConfig file
    // https://github.com/CBATeam/CBA_A3/blob/e48c270da63574368c7a8f553ea64a29a339d40d/addons/settings/fnc_initDisplayMain.sqf#L8
    class cba_settings_userconfig: ADDON {};
};

// Remove after CBA 3.16.1
#include "CfgEventHandlers.hpp"

// Prevents setting changes from persisting between server restarts on dedicated server
// Needs CBA 3.16.1
cba_settings_volatile = 1;
