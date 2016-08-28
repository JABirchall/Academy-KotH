_donator = player_info select 1;

// loadout speichern blu
cargobox_blu addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];   
cargobox_blu addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[2] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];  
cargobox_blu addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[3] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 

if (_donator == 0) then {
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};

if (_donator >= 1) then {
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[4] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};
if (_donator >= 2) then {	
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[5] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 3) then {	
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[6] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 6) then {	
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[7] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[8] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_blu addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[9] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 	
};

// loadout laden blu
cargobox_blu1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[1] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 
cargobox_blu1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[2] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 
cargobox_blu1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[3] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 

if (_donator == 0) then {
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};

if (_donator >= 1) then {
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[4] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};	
if (_donator >= 2) then {
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[5] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};		
if (_donator >= 3) then {
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[6] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};
if (_donator >= 6) then {
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[7] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[8] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_blu1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[9] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};

// Loadout speichern red
cargobox_red addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[1] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];  
cargobox_red addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[2] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 
cargobox_red addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[3] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 

if (_donator == 0) then {
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};

if (_donator >= 1) then {
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[4] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};	
if (_donator >= 2) then {	
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[5] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 3) then {	
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[6] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 6) then {	
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[7] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[8] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_red addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[9] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 	
};

// Loadout Laden red
cargobox_red1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[1] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];
cargobox_red1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[2] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];
cargobox_red1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[3] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];

if (_donator == 0) then {
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};

if (_donator >= 1) then {
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[4] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 2) then {
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[5] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};	
if (_donator >= 3) then {
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[6] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};	
if (_donator >= 6) then {
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[7] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[8] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_red1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[9] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};

// Loadout Speichern Ind
cargobox_ind addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[1] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 
cargobox_ind addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[2] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 
cargobox_ind addAction ["<t color='#FF0000' size='1.0' shadow='2'>Save Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout was saved on the server.";
		[3] call KOTH_fnc_player_setGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}]; 

if (_donator == 0) then {
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};

if (_donator >= 1) then {
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[4] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 2) then {	
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[5] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 3) then {	
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[6] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};
if (_donator >= 6) then {	
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[7] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[8] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
	cargobox_ind addAction ["<t color='#cc0000' size='1.0' shadow='2'>Save Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout was saved on the server.";
			[9] call KOTH_fnc_player_setGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 	
};

// Loadout Laden Ind
cargobox_ind1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout ONE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[1] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];              
cargobox_ind1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout TWO</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[2] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];
cargobox_ind1 addAction ["<t color='#00FF00' size='1.0' shadow='2'>Equip Loadout THREE</t>", {
	if(!player_loadoutcooldown) then
	{
		player_loadoutcooldown = true;
		hint "Your loadout will load now. Please wait!";
		[3] call KOTH_fnc_player_getGear;
		_nil = [30] execVM "player-loadout\lcool.sqf";
		sleep 30;
		player_loadoutcooldown = false;
	} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
}];

if (_donator == 0) then {
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>More Loadouts for Donator</t>", {
	}];
};
															
if (_donator >= 1) then {
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FOUR</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[4] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}]; 
};	
if (_donator >= 2) then {
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout FIVE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[5] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};	
if (_donator >= 3) then {
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SIX</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[6] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};	
if (_donator >= 6) then {
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout SEVEN</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[7] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout EIGHT</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[8] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
	cargobox_ind1 addAction ["<t color='#00b200' size='1.0' shadow='2'>Equip Loadout NINE</t>", {
		if(!player_loadoutcooldown) then
		{
			player_loadoutcooldown = true;
			hint "Your loadout will load now. Please wait!";
			[9] call KOTH_fnc_player_getGear;
			_nil = [30] execVM "player-loadout\lcool.sqf";
			sleep 30;
			player_loadoutcooldown = false;
		} else {hint format ["Your loadout cooldown is active. Please wait another %1 seconds!",lcdleft];};
	}];
};