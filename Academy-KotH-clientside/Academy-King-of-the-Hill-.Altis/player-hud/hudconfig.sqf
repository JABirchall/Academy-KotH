/*
  File: fn_hudConfig.sqf
  Author: DeadP4xel
  Edit: BrezZZz

  Description:
  Makes the HUD with Empty Data
  
  HP-Bar only
*/
private["_gui","_health"];
disableSerialization;

// VARIABLES
_gui = uiNameSpace getVariable ["lifebar",displayNull];

// ERROR CHECK
if(isNull _gui) then {[] call hudCreate};

// DISPLAYS
_healthBar = _gui displayCtrl 45013;
_healthText = _gui displayCtrl 45014;

// HEALTH BAR
_healthText ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_healthBar progressSetPosition (1 - (damage player));
