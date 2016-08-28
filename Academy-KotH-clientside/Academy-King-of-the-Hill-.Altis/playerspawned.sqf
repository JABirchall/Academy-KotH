// Gruppen Radio aus
enableRadio false;
enableSentences false;
0 fadeRadio 0;

waitUntil {!isNull player};
waitUntil {alive player};

uisleep 2;

// HP-Bar aufrufen
[] call hudConfig;

// Gear löschen und zuteilen
removeAllWeapons player;
removeBackpack player;
player additem "FirstAidKit";

// Vehicle Shop to Mainmenu
player_vt = 0;

// Earplug script
[player] execVM "client-scripts\simpleEP.sqf";
	
// Hint in der Savezone bei linksclick
player addAction ["", {hint "Shooting in the SafeZone not allowed";}, "", 0, false, true, "DefaultAction", "isNil 'allowFire'"];

// Group chat an 
3 enableChannel [true, true]; // Enable user ability to send text but disable voice on group

uisleep 1;

// Donator Gear Laden
_donator = player_info select 1;

if (_donator >= 1) then {
	player setVariable ["donatorLevel", _donator, true];	
	[1] call KOTH_fnc_player_getGear;
};