// Academy-KotH.de init.sqf

// Groupen Befehle aus
enableSaving [false, false];
enableRadio false;
enableSentences false;
0 fadeRadio 0;

// block script injection exploit
inGameUISetEventHandler ["PrevAction", ""];
inGameUISetEventHandler ["Action", ""];
inGameUISetEventHandler ["NextAction", ""];

_descExtPath = str missionConfigFile;
currMissionDir = compileFinal str (_descExtPath select [0, count _descExtPath - 15]);



//// Variablen Init.

// voice
0 enableChannel [true, false]; // Enable user ability to send text but disable voice on global channel
1 enableChannel [true, false]; // Enable user ability to send text but disable voice on side channel
2 enableChannel [false, false]; // Disable user ability to send text and voice on Command channel
3 enableChannel [true, false]; // Enable user ability to send text but disable voice on group


// KotH
ticketsToWin = 300;
bluewin = 0;
redwin = 0;
greenwin = 0;
authorized = true;
round_over = false;
restart_done = false;

// Cooldowns
player_vcooldown = false;
player_savecooldown = false;
player_loadoutcooldown = false;
timeleft = 0;

// DOS
PlayerOffset = 0;

// Healtbar
healthBar = 0;
healthText = 0;

// AFK kicker
caseAFK = 0;
actPos = "0";
actPos2 = "0";
actCount = 0;
StringActPos = "0";
StringActPos2 = "0";

// Vehicle Shop
player_vt = 0;

// Jump
csg_jumping	= false;

// Spawntuck positions
posbluetruck = 0;
posredtruck = 0;
posindtruck = 0;

if(isNil "spawntruck_blu") then
{	
	spawntruck_blu = 0;
};
if(isNil "spawntruck_red") then
{
	spawntruck_red = 0;
};
if(isNil "spawntruck_ind") then
{
	spawntruck_ind = 0;
};

//// Compiler

// Player Shop
_weapDialog = [] spawn compile PreprocessFileLineNumbers "player-shop\academy_fnc_WeapDialog.sqf";
waitUntil {scriptDone _weapDialog};

// Player Loadout
formatArray = compile preprocessFileLineNumbers "player-loadout\formatArray.sqf";
titleTextMessage = compile preprocessFileLineNumbers "player-loadout\titletextmessage.sqf";
getRankInfo = compile preprocessFileLineNumbers "player-loadout\getRankInfo.sqf";
getWeaponInfo = compile preprocessFileLineNumbers "player-loadout\getWeaponInfo.sqf";
filterItem = compile preprocessFileLineNumbers "player-loadout\filterItem.sqf";

// HP-Bar
hudConfig = compile preprocessFileLineNumbers "player-hud\hudConfig.sqf";
hudCreate = compile preprocessFileLineNumbers "player-hud\hudCreate.sqf";

// text, jump and stuff
KOTH_fnc_dynamictext = compile preprocessFileLineNumbers "client-scripts\fn_dynamictext.sqf";
KOTH_fnc_jump = compile preprocessFileLineNumbers "client-scripts\fn_jump.sqf";
KOTH_fnc_switchMoveGlobal = compile preprocessFileLineNumbers "client-scripts\fn_switchMoveGlobal.sqf";

// Player Functions
KOTH_fnc_player_stats_load	= compileFinal preprocessFileLineNumbers "player-fn\fn_playerStatsInit.sqf";
KOTH_fnc_player_stats_add	= compileFinal preprocessFileLineNumbers "player-fn\fn_playerStatsAdd.sqf";
KOTH_fnc_player_getGear	= compileFinal preprocessFileLineNumbers "player-fn\fn_playerLoadGear.sqf";
KOTH_fnc_player_setGear	= compileFinal preprocessFileLineNumbers "player-fn\fn_playerSaveGear.sqf";
KOTH_fnc_player_SaveStats	= compileFinal preprocessFileLineNumbers "player-fn\fn_playerSaveStats.sqf";
KOTH_fnc_player_icons		= compileFinal preprocessFileLineNumbers "player-fn\fn_playericons.sqf";

"player_stats_load"	addPublicVariableEventHandler KOTH_fnc_player_stats_load;
"player_stats_add"	addPublicVariableEventHandler KOTH_fnc_player_stats_add;
"player_getGear"		addPublicVariableEventHandler KOTH_fnc_player_getGear;

KOTH_saveGearLocal = true; // <-- Don't Change me
KOTH_saveGearLocalServer = "ACADEMY"; // <-- Change me plz.

// Tk Punishment
call compile preprocessFile "tk-punishment\=BTC=_tk_init.sqf";

//// Player Icons

/*onEachFrame
{
    private["_pos"];
    {
        if(player distance _x < 1000 && side _x == side player && alive _x && _x != player) then
        {
                _icon = switch (playerSide) do
{
case BLUFOR: { call currMissionDir + "images\igui_side_blufor_ca.paa" };
case OPFOR:  { call currMissionDir + "images\igui_side_opfor_ca.paa" };
default      { call currMissionDir + "images\igui_side_indep_ca.paa" };
};
_pos = visiblePosition _x;
                _pos set[2,(getPosATL _x select 2) + 2.2];

_color = [1,1,1,0.5];

if(player distance _x < 40) then
{
drawIcon3D [_icon,_color,_pos,0.5,0.5,0,name _x,2,0.04];
} else
{
drawIcon3D [_icon,_color,_pos,0.5,0.5,0,"",2,0];
};
        };
    } forEach allUnits;
};*/



if(!isServer) then
{
	//Player Ready?
	waitUntil {!isNull player && player == player && (getPlayerUID player) != ""}; 
    //Server Ready?
    waitUntil {uiSleep 0.1; (!(isNil "KOTH_backendReady"))};

    if (!KOTH_backendReady) then
    {
	    0 cutText["Error connecting to the server","BLACK FADED"];
	    0 cutFadeOut 9999999;
	    diag_log "KOTH: Error connecting to the server";
    }
    else
    {
        0 cutText["Loading stats, Might take a while please wait...","BLACK FADED"];
	    0 cutFadeOut 9999999;

        waitUntil {!isNull player};
        waitUntil {alive player};

        pvar_onPlayerGetStats = [player];
	    publicvariableServer "pvar_onPlayerGetStats";
	    waitUntil {uiSleep 0.1; (!(isNil "player_loaded"))};
		
	    diag_log "KOTH: player_loaded ready";

		// Eventheandler
		player addEventHandler ["respawn", {_this execVM "playerSpawned.sqf"}];
		player addMPEventHandler ["mpkilled", {_this execVM "client-scripts\playerKilledServer.sqf"}];
	
	
		// Execs
		_nil = execVM "client-scripts\academy_playerLoop.sqf";	
		_nil = execVM "client-scripts\academy_SaveLoop.sqf";	
		_nil = execVM "client-scripts\academy_safezone.sqf";				
		_nil = execVM "client-scripts\spawntruck_markers.sqf";		
		_nil = execVM "client-scripts\academy_teleportFlagpoleActions.sqf";	
		_nil = [] execVM "client-scripts\player_markers.sqf";	
		null = execVM "client-scripts\killTicker.sqf";		
			
		_nil = execVM "player-shop\academy_playershopActions.sqf";	
		
		_nil = execVM "player-loadout\academy_loadoutActions.sqf";	
		
		_nil = execVM "vehicle-shop\academy_vehShopActions.sqf";
		 
		_nil = execVM "player-hud\academy_hudLoop.sqf";
		
		_nil = [] execVM "playerSpawned.sqf";
		
		player addRating 99999999;
				
		0 cutText ["","BLACK IN"];
	};
};	

//Client Scripte
if (!isDedicated) then
{
	["EH_KOTH_fnc_player_icons", "OnEachFrame", "KOTH_fnc_player_icons"] call BIS_fnc_addStackedEventHandler;
	[] execVM "client-scripts\academy_briefing.sqf";
	[] execVM "client-scripts\academy_welcome.sqf";
	[] execVM "client-scripts\disableThermal.sqf";
	[] execVM "client-scripts\academy_afkkicker.sqf";
	[] execVM "client-scripts\academy_kickplayer.sqf";
	[] execVM "client-scripts\academy_spawnblockkick.sqf";
	[] execVM "client-scripts\zlt_fastrope.sqf";
	[] execVM "client-scripts\DynamicWeatherEffects.sqf";

	onKeyPress = compile preprocessFile "client-scripts\onKeyPress.sqf";
	waituntil {!(IsNull (findDisplay 46))};
	(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress;"];
};

[] spawn {
	while {true} do
	{
		waitUntil {!isNull (findDisplay 49)};
		((findDisplay 49) displayCtrl 122) ctrlEnable false;
		((findDisplay 49) displayCtrl 122) ctrlShow false;
		waitUntil {isNull (findDisplay 49)};
	};
};