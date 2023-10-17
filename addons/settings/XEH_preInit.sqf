#include "script_component.hpp"
ADDON = false;

if (!isDedicated) exitWith {};

if (!isNil "CBA_settings") exitWith {
    private _msg = "[ArmaForces] (settings) ERROR: Executed after CBA Settings init! Server settings might not be clean!";
    diag_log text _msg;
    [_msg] remoteExec ["systemChat", 0];
};

INFO("Clearing CBA Settings hash");
profileNamespace setVariable ["CBA_settings_hash", [] call CBA_fnc_hashCreate];

ADDON = true;
