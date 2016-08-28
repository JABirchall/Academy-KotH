// File: academy_SaveLoop.sqf
// Author: BrezZZz
// speichert die Stats alle 300 secunden und blendet Donation-Werbung ein
// außer für Donator selbst

_donator = player_info select 1;

while {true} do
{
	uiSleep 300;
	call KOTH_fnc_player_SaveStats;
	if (_donator == 0) then {
		hint parsetext " <img size='10' shadow='true' image='images\spenden.paa'/><br/> "; 
	};		
};