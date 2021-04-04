#include "script_component.hpp"
ADDON = false;

// if (!isDedicated) exitWith {};

if (!isNil "CBA_settings") exitWith {
    private _msg = "[ArmaForces] (settings) ERROR: Executed after CBA Settings init! Server settings will be not set properly!";
    diag_log text _msg;
    [_msg] remoteExec ["systemChat", 0];
};

INFO_1("Loading server settings from %1",QPATHTOF(cba_settings.sqf));

LOG("Building default CBA Settings hash");
private _settingsHash = HASH_NULL;
private _defaultSettings = [loadFile QPATHTOF(cba_settings.sqf), false] call compileScript ["\x\cba\addons\settings\fnc_parse.sqf"];
{
    _x params ["_setting", "_value", "_priority"];
    TRACE_3("Setting value of",_setting,_value,_priority);

    [_settingsHash, toLower _setting, [_value, _priority]] call CBA_fnc_hashSet;
} forEach _defaultSettings;

LOG("Overwriting CBA Settings hash");
profileNamespace setVariable ["CBA_settings_hash", _settingsHash];

ADDON = true;
