/*--------------------------------------------------
	File:      fn_log.sqf
	Author:    Aecy (ofpectag: AM)
--------------------------------------------------*/

// -- Parameters.
params [
	["_string", ""],
	["_debug", false, [false]]
];

// -- Bored checks.
if (_debug && {isNil "AM_debug"}) exitWith {};

// -- Parsing my !string in string.
if !(_string isEqualType "") then {
	_string = str _string;
};

// -- Parsing for diag_log.
private _log = (_string splitString "#~") # 0;

diag_log _log;

// -- Always bored checks.
if (parsingNamespace getVariable ["noDebug", false]) exitWith {};

// -- Log with dll extension.
"debug_console" callExtension _string;
