// File: academy_hudLoop.sqf
// Edit: BrezZZz
// Funktion: Create and refreshes the hud every 5 Seconds

sleep 5;

while {true} do
{
	sleep 5;
	
	// Auch die HP-Bar aktuallisieren
	[] call hudCreate;
	
	disableSerialization;
		
    //Ist der uiNamespace da?
   if (isNull (uiNamespace getvariable ["statsDisplay",displayNull])) then 
    {	
        cutRsc ["statsScreen", "PLAIN"];  //show Resource
        
        //übergabe an die ID
        with uiNamespace do
        {
            statsxp = statsDisplay displayCtrl 1000;
			statskills = statsDisplay displayCtrl 1001;
			
			statsblu = statsDisplay displayCtrl 1002;
			statsred = statsDisplay displayCtrl 1003;
			statsind = statsDisplay displayCtrl 1004;
			
			statsblucount 	= statsDisplay displayCtrl 1005;
			statsredcount 	= statsDisplay displayCtrl 1006;
			statsindcount 	= statsDisplay displayCtrl 1007;
				
        };
    };
    	
	uiNamespace setVariable ['tickets_blu', floor (TICKETS_BLU / 3)];
	uiNamespace setVariable ['tickets_red', floor (TICKETS_RED / 3)];
	uiNamespace setVariable ['tickets_ind', floor (TICKETS_IND / 3)];
	uiNamespace setVariable ['playerxp', player_stats select 0];
	
	_rankinfo = player_stats select 0 call getRankInfo;
	
	uiNamespace setVariable ['playerrank', _rankinfo select 0];
	uiNamespace setVariable ['playernextrank', _rankinfo select 1];
	uiNamespace setVariable ['playerkills', player_stats select 1];
	uiNamespace setVariable ['playerdeaths', player_stats select 2];
	
	uiNamespace setVariable ['blucount', playersNumber west];
	uiNamespace setVariable ['redcount', playersNumber east];
	uiNamespace setVariable ['greencount', playersNumber resistance];
	
    //update controls. ONLY uinamespace from this point
    with uiNamespace do
    {
		_output = format ["XP: %1/%2   Rank: %3", playerxp, playernextrank, playerrank];
        statsxp ctrlSetText _output;
        statsxp ctrlCommit 0.1; 
		
		_output = format ["Kills: %1   Deaths: %2", playerkills, playerdeaths];
		statskills ctrlSetText _output;
        statskills ctrlCommit 0.1; 
		
		statsblu ctrlSetText str tickets_blu;
        statsblu ctrlCommit 0.1; 
		
		statsblucount ctrlSetText str blucount;
        statsblucount ctrlCommit 0.1;
	
		statsred ctrlSetText str tickets_red;
        statsred ctrlCommit 0.1; 
		
		statsredcount ctrlSetText str redcount;
        statsredcount ctrlCommit 0.1;
		
		statsind ctrlSetText str tickets_ind;
        statsind ctrlCommit 0.1; 

		statsindcount ctrlSetText str greencount;
        statsindcount ctrlCommit 0.1;
			
    };
};