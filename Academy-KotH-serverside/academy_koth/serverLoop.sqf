while {true} do
{
	if (restart_done) exitwith {};
	sleep 10;
	
	_PlayerCount = playersNumber west + playersNumber east + playersNumber independent + PlayerOffset;	
	_SizeToAdd = _PlayerCount * 5;
	ObjectiveSize = _SizeToAdd + 85;
	publicVariable "ObjectiveSize";	
	_allPlayers = playableUnits;
	_bluewin = bluewin;
	_redwin = redwin;
	_greenwin = greenwin;

	_bluCount = 0;
	_redCount = 0;
	_indCount = 0;
		
	_count = (count _allPlayers) -1;
	
	for "_i" from 0 to _count do 
	{
		_unit = _allPlayers select _i;
		if(isPlayer _unit) then
		{
		_distance = _unit distance (getMarkerPos "objective_main");
	
		if (_distance < ObjectiveSize && _distance > 75) then
		{
			player_stats_add = [1,0,0];
			_unit = _unit;
			owner _unit publicVariableClient "player_stats_add";
			
			if(side _unit == west) then {
				_bluCount = _bluCount + 1;
				TICKETS_BLU = TICKETS_BLU + 0.05;
			};
			if(side _unit == east) then {
				_redCount = _redCount + 1;
				TICKETS_RED = TICKETS_RED + 0.05;
			};
			if(side _unit == resistance) then {
				_indCount = _indCount + 1;
				TICKETS_IND = TICKETS_IND + 0.05;
			};
			
		};
		
		if (_distance < 75) then
		{
			player_stats_add = [2,0,0];
			_unit = _unit;
			owner _unit publicVariableClient "player_stats_add";
			
			if(side _unit == west) then {
				_bluCount = _bluCount + 2;
				TICKETS_BLU = TICKETS_BLU + 0.1;
			};
			if(side _unit == east) then {
				_redCount = _redCount + 2;
				TICKETS_RED = TICKETS_RED + 0.1;
			};
			if(side _unit == resistance) then {
				_indCount = _indCount + 2;
				TICKETS_IND = TICKETS_IND + 0.1;
			};
		};
		};
	
	};
	
	if (_bluCount > _redCount && _bluCount > _indCount) then {
		TICKETS_BLU = TICKETS_BLU + 1;
		"OBJECTIVE" setMarkerColor "ColorBlue";
	}
	else
	{
		if (_redCount > _bluCount && _redCount > _indCount) then {
			TICKETS_RED = TICKETS_RED + 0.8;
			"OBJECTIVE" setMarkerColor "ColorRed";
		}
		else
		{
			if (_indCount > _bluCount && _indCount > _redCount) then {
				TICKETS_IND = TICKETS_IND + 1;
				"OBJECTIVE" setMarkerColor "ColorGreen";
			}
			else
			{
				"OBJECTIVE" setMarkerColor "ColorBlack";
			};
		};
	};

	if (_bluewin == 1) then {
		restart_done = true;
		"END1" call BIS_fnc_endMissionServer;
		};
	if (_redwin == 1) then {
		restart_done = true;
		"END2" call BIS_fnc_endMissionServer;
		};
	if (_greenwin == 1) then {
		restart_done = true;
		"END3" call BIS_fnc_endMissionServer;
		};
	
	publicVariable "TICKETS_BLU";
	publicVariable "TICKETS_RED";
	publicVariable "TICKETS_IND";
	
// Overtime, 
// unter 60 player maximal 2 verlängerungen
// unter 30 player maximal 4 verlängerunden
// unter 15 player unendlich verlängerungen
	
	if ((TICKETS_BLU > 850) || (TICKETS_RED > 850) || (TICKETS_IND > 850)) then {
		if ((_PlayerCount <= 60) && (overtime != 4)) then {
			overtime = overtime + 2;
			TICKETS_BLU = 0;
			TICKETS_RED = 0;
			TICKETS_IND = 0;		
		}
		else
		{
			if ((_PlayerCount <= 30) && (overtime != 4)) then {
				overtime = overtime + 1;
				TICKETS_BLU = 0;
				TICKETS_RED = 0;
				TICKETS_IND = 0;
			}
			else
			{
				if ((_PlayerCount <= 15) && (overtime != 4)) then {
					TICKETS_BLU = 0;
					TICKETS_RED = 0;
					TICKETS_IND = 0;
				};
			};
		};
	};
		
	publicVariable "overtime";

// SafezoneMarker

  createMarker ["SavezoneBlu", getMarkerPos "BLUFOR_BASE"];    
  "SavezoneBlu" setMarkerShape "ELLIPSE";    
  "SavezoneBlu" setMarkerSize [800, 800];    
  "SavezoneBlu" setMarkerBrush "DiagGrid";    
  "SavezoneBlu" setMarkerColor "ColorBlue";    
  "SavezoneBlu" setMarkerAlpha 0.5;	
  
  createMarker ["SavezoneRed", getMarkerPos "OPFOR_BASE"];    
  "SavezoneRed" setMarkerShape "ELLIPSE";    
  "SavezoneRed" setMarkerSize [800, 800];    
  "SavezoneRed" setMarkerBrush "DiagGrid";    
  "SavezoneRed" setMarkerColor "ColorRed";    
  "SavezoneRed" setMarkerAlpha 0.5;	  
  
   createMarker ["SavezoneGreen", getMarkerPos "INDEPENDENT_BASE"];    
  "SavezoneGreen" setMarkerShape "ELLIPSE";    
  "SavezoneGreen" setMarkerSize [800, 800];    
  "SavezoneGreen" setMarkerBrush "DiagGrid";    
  "SavezoneGreen" setMarkerColor "ColorGreen";    
  "SavezoneGreen" setMarkerAlpha 0.5;	
	
};