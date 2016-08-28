/*
	File: fn_hudCreate.sqf
	Author: DeadP4xel
	Edit: BrezZZz
	
	HP-Bar only
*/

disableSerialization;

2 cutRsc ["lifebar","PLAIN"];
[] call hudConfig;

[] spawn
{
	private["_dam"];
	while {true} do
	{
		_damage = (damage player);
		waitUntil {(damage player) != _damage};
		[] call hudConfig;
	};
};
