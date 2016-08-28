/*
	File: initPlayerLocal.sqf
	Author: itsatrap
	Edit: BrezZZz
	
	Description:
		Executed locally when player joins mission (includes both mission start and JIP).
	Parameters:
		NONE
*/

if( !hasInterface ) exitWith {}; 
waitUntil { !isNull player }; 
waitUntil { local player };
player setVariable["hideticker",false];


uisleep 1;

// Client Task
task1 = player createSimpleTask ["Secure Kavala"];
task1 setSimpleTaskDescription ["Secure the Objective, First team that gets 300 points win","Secure Kavala","Kavala"];
task1 setSimpleTaskDestination (getMarkerPos "objective_main");
task1 setTaskState "Assigned";
player setCurrentTask task1;

// Disable Fatigue
player enableFatigue false;
player enableStamina false;
player allowSprint true;
player setCustomAimCoef 0.1;	

// Group System
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

waitUntil {alive player};
waitUntil {!isNil "player_info"};

// AutoTeambalance
[] execVM "client-scripts\academy_teambalance.sqf";

// Donator Welcome 
[] execVM "client-scripts\academy_donatorWelcome.sqf";

