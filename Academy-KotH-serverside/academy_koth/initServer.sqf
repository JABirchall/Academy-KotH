if (isServer) then
{

// Server Time 
setTimeMultiplier 0.1;

respawnTruck = compile preprocessFileLineNumbers "academy_koth\other_functions\respawnTruck.sqf";
deleteWreck = compile preprocessFileLineNumbers "academy_koth\other_functions\deleteWreck.sqf";
despawnVehicle = compile preprocessFileLineNumbers "academy_koth\other_functions\despawnVehicle.sqf";

//**********************************************************
// EXTDB2 START

//DEBUG
KOTH_DEBUG = false;

// DB
KOTH_fnc_strip			= compileFinal preprocessFileLineNumbers "academy_koth\extDB\fn_strip.sqf";
KOTH_fnc_extdb			= compileFinal preprocessFileLineNumbers "academy_koth\extDB\fn_extdb.sqf";
KOTH_fnc_async			= compileFinal preprocessFileLineNumbers "academy_koth\extDB\fn_async.sqf";
KOTH_fnc_single			= compileFinal preprocessFileLineNumbers "academy_koth\extDB\fn_single.sqf";
KOTH_fnc_fireandforget	= compileFinal preprocessFileLineNumbers "academy_koth\extDB\fn_fireandforget.sqf";

// player
KOTH_fnc_getLoadout 	= compileFinal preprocessFileLineNumbers "academy_koth\player\getLoadout.sqf";
KOTH_fnc_setLoadout 	= compileFinal preprocessFileLineNumbers "academy_koth\player\setLoadout.sqf";
KOTH_fnc_getPlayerStats = compileFinal preprocessFileLineNumbers "academy_koth\player\getPlayerStats.sqf";
KOTH_fnc_setPlayerStats = compileFinal preprocessFileLineNumbers "academy_koth\player\setPlayerStats.sqf";

"pvar_onPlayerSaveGear" 	addPublicVariableEventHandler KOTH_fnc_setLoadout;
"pvar_onPlayerLoadGear" 	addPublicVariableEventHandler KOTH_fnc_getLoadout;

"pvar_onPlayerSaveStats" 	addPublicVariableEventHandler KOTH_fnc_setPlayerStats;
"pvar_onPlayerGetStats" 	addPublicVariableEventHandler KOTH_fnc_getPlayerStats;


diag_log "loading Database";
_extDB = false;
_extDB = ["koth","SQL_CUSTOM_V2","koth"] call KOTH_fnc_extdb;

if (!_extDB) exitWith
{
	diag_log "KOTH: NO DATABASE";
	KOTH_backendReady = false;
	publicVariable "KOTH_backendReady";
};

// EXTDB2 END
//**********************************************************
[
    1*30, // seconds to delete dead bodies (0 means don't delete) 
    2*30, // seconds to delete dead vehicles (0 means don't delete)
    2*30, // seconds to delete immobile vehicles (0 means don't delete)
    1*60, // seconds to delete dropped weapons (0 means don't delete)
    1, // seconds to deleted planted explosives (0 means don't delete)
    0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'academy_koth\repetitive_cleanup.sqf';  

//overtimer
overtime = 0;

TICKETS_BLU = 0;
publicVariable "TICKETS_BLU";
TICKETS_RED = 0;
publicVariable "TICKETS_RED";
TICKETS_IND = 0;
publicVariable "TICKETS_IND";

createMarker ["OBJECTIVE", getMarkerPos "objective_main"];
"OBJECTIVE" setMarkerShape "ELLIPSE";
"OBJECTIVE" setMarkerSize [85, 85];
"OBJECTIVE" setMarkerBrush "Solid";
"OBJECTIVE" setMarkerColor "ColorBlack";
"OBJECTIVE" setMarkerAlpha 0.5;

createMarker ["OBJECTIVEINNER", getMarkerPos "objective_main"];
"OBJECTIVEINNER" setMarkerShape "ELLIPSE";
"OBJECTIVEINNER" setMarkerSize [75, 75];
"OBJECTIVEINNER" setMarkerBrush "Solid";
"OBJECTIVEINNER" setMarkerColor "ColorBlack";
"OBJECTIVEINNER" setMarkerAlpha 0.6;

[] execVM "academy_koth\serverLoop.sqf";

"bluf" spawn respawnTruck;
"redf" spawn respawnTruck;
"indf" spawn respawnTruck;

CSG_water = compileFinal "
	private [""_veh"",""_isWater"",""_pos""];
	_veh = _this select 0;
	if(typeName _veh != ""OBJECT"") exitWith{};
	_unit = _this select 2;
	_pos= getPosASLW _veh;
	_isWater = surfaceIsWater _pos;
	if (_isWater && (_pos select 2) < -1.5) then
	{
		_veh setDammage 1;
		diag_log format[""CSG: %1 drove the spawn truck into deep water"",name _unit];
	};
";

clearWeaponCargoGlobal boxind;
clearMagazineCargoGlobal boxind;
clearItemCargoGlobal boxind;
clearWeaponCargoGlobal boxred;
clearMagazineCargoGlobal boxred;
clearItemCargoGlobal boxred;
clearWeaponCargoGlobal boxblu;
clearMagazineCargoGlobal boxblu;
clearItemCargoGlobal boxblu;

handleDisconnect = {
	_unit = _this select 0; _containers = nearestObjects[_unit,["WeaponHolderSimulated"],5];
	{deleteVehicle _x;} foreach _containers;
	deleteVehicle _unit;
	};
addMissionEventHandler ["HandleDisconnect",{_this call handleDisconnect; false}];
// Group System
["Initialize"] call BIS_fnc_dynamicGroups;
};


//**********************************************************
// EXTDB2 START

KOTH_backendReady = true;
publicVariable "KOTH_backendReady";




// EXTDB2 END
//**********************************************************
