// 	File: academy_afkkicker.sqf
//	Author: BrezZZz

_admin = player_info select 0;
if (_admin > 0) exitwith {};
while {true} do {

sleep 10;

	if (actCount == 39) then {titleText ["Academy-KotH: Move or get Kicked for AFK in 2 Minutes", "PLAIN"];};
	if (actCount == 42) then {titleText ["Academy-KotH: Move or get Kicked for AFK in 1 Minute", "PLAIN"];};	
	if (actCount == 45) then {player setVariable ["KickVar", 666, true];};	

	
	switch (caseAFK) do {
		case 0: { 
//			hint "Saven Position Nr 1"; 
			actPos = getPos player;
			StringActPos = str actPos;			
			caseAFK = 1;
		};
		
		case 1: { 			
//			hint "Saven Position Nr 2";
			actPos2 = getPos player;
			StringActPos2 = str actPos2;
			caseAFK = 2;
		};
		
		case 2: { 
			if (StringActPos == StringActPos2) then {
				actCount = actCount+1; 
//				hint "Position unverändert";
				caseAFK = 1;
			}
			else {	
				actCount = 0;
				caseAFK = 0;
//				hint "Position verändert";
			};	
		};
		default { hint "Error" };
						};
};