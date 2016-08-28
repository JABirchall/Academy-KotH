// File: academy_playerLoop.sqf
// Author: BrezZZz
// Loop-Checks ect.

while {true} do
{
	uisleep 10;

	// Zyklische anpassung der Zonengröße DOS
	waitUntil {!isNil "ObjectiveSize"};
	"OBJECTIVE" setMarkerSize [ObjectiveSize, ObjectiveSize];	
	
	// Disable Fatigue
	player enableFatigue false;
	player enableStamina false;
	player allowSprint true;
	player setCustomAimCoef 0.1;	
	
	// Checken ob ein Team gewonnen hat
	if (TICKETS_BLU >= ticketsToWin * 3) then { execVM "client-scripts\academy_blue_win.sqf";};
	if (TICKETS_RED >= ticketsToWin * 3) then { execVM "client-scripts\academy_red_win.sqf";};
	if (TICKETS_IND >= ticketsToWin * 3) then { execVM "client-scripts\academy_green_win.sqf";};
	
};