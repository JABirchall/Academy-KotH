private ["_blucount","_redcount","_greencount"];

// File: academy_teambalance.sqf
// Author: BrezZZz
// Date: 29.03.16

// sollte in die Initserver
//tb_offsetblu = 0;
//tb_offsetred = 0;
//tb_offsetind = 0;

tb_maxDif = 4;
tb_blucount = (playersNumber west);
tb_redcount = (playersNumber east);
tb_indcount = (playersNumber independent);

waitUntil {!isNil "player_info"};
_admin = player_info select 0;

if (_admin == 0) then {
	if (side player == west) then {
		if ((tb_blucount >= (tb_redcount + tb_maxDif)) || (tb_blucount >= (tb_indcount + tb_maxDif))) then {
			player enableSimulation false;
			titleText ["Academy-KotH: Teams are unbalanced, Please change Team!!!", "BLACK FADED", 999];
			uisleep 15;
			["unBalancedTeams",false,2] spawn BIS_fnc_endMission;
		};
	};
	if (side player == east) then {
		if ((tb_redcount >= (tb_blucount + tb_maxDif)) || (tb_redcount >= (tb_indcount + tb_maxDif))) then {
			player enableSimulation false;
			titleText ["Academy-KotH: Teams are unbalanced, Please change Team!!!", "BLACK FADED", 999];
			uisleep 15;
			["unBalancedTeams",false,2] spawn BIS_fnc_endMission;
		};
	};
	if (side player == independent) then {
		if ((tb_indcount >= (tb_blucount + tb_maxDif)) || (tb_indcount >= (tb_redcount + tb_maxDif))) then {
			player enableSimulation false;
			titleText ["Academy-KotH: Teams are unbalanced, Please change Team!!!", "BLACK FADED", 999];
			uisleep 15;
			["unBalancedTeams",false,2] spawn BIS_fnc_endMission;
		};
	};	
};




