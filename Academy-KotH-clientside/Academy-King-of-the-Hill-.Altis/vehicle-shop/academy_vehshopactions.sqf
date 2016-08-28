waitUntil {!isNil "player_info"};
_admin = player_info select 0;

// Blau Vehicle	

trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Cars</t>", "player_vt=1;", nil, 1.5, false, false, "", "player_vt==0"];
trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Heli</t>", "player_vt=2;", nil, 1.5, false, false, "", "player_vt==0"];	
trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>DLC</t>", "player_vt=3;", nil, 1.5, false, false, "", "player_vt==0"];
	
	
/// DLC 

trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 5 - MB 4WD</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 5) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		 
				player_vcooldown = true;
				_veh = "C_Offroad_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Qilin Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  			
				player_vcooldown = true;
				_veh = "O_T_LSV_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 13 - Prowler Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 13) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "B_T_LSV_01_unarmed_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 15 - Qilin Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 15) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "O_T_LSV_02_armed_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
			} else {hint "vehicle spawnpoint is blocked"};
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Prowler Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "B_T_LSV_01_armed_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];	
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Kart</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "C_Kart_01_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};

	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - M-900 Hummingbird</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "C_Heli_Light_01_civil_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Bank</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_bench_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Empty</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};	
	}, nil, 1.5, false, false, "", "player_vt==3"];	
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Huron</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			DLCSpawnBluCheck = getMarkerpos "vspawndlc_blu" nearEntities [["air", "car"], 5];  
			if (DLCSpawnBluCheck isEqualTo []) then {  		
				player_vcooldown = true;
				_veh = "B_Heli_Transport_03_F" createVehicle (getMarkerPos "vspawndlc_blu");
				_veh setDir (markerDir "vspawndlc_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};			
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};	
	}, nil, 1.5, false, false, "", "player_vt==3"];	

//// Cars	
	
	
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 1 - Buy ATV</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
		if (CarSpawnBluCheck isEqualTo []) then {  		
			player_vcooldown = true;
			_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_blu");
			_veh setDir (markerDir "vspawn_blu"); 
			sleep 0.5;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			player moveInDriver _veh;
			_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";		
			sleep 360;
			player_vcooldown = false;
		} else {hint "vehicle spawnpoint is blocked"};		
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 8 - Buy Hatchback</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 8) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "C_Hatchback_01_sport_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Buy Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 12 - Buy Hunter</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{	
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 14 - Buy Little Bird</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			AirSpawnBluCheck = getMarkerpos "vspawna_blu" nearEntities [["air", "car"], 5];  
			if (AirSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawna_blu");
				_veh setDir (markerDir "vspawna_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Armed Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.75;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Quadrocopter (control with UAV Terminal)</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
//			AirSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
//			if (AirSpawnBluCheck isEqualTo []) then { 	
				player_vcooldown = true;
				_dronespawn = (getmarkerpos "vspawn_blu") select 1;  
				_dronespawn = _dronespawn + 15;  
				_Spawnpoint = [(getmarkerpos "vspawn_blu") select 0, _dronespawn, (getmarkerpos "vspawn_blu") select 2]; 
				_veh = createVehicle ["B_UAV_01_F", _Spawnpoint, [], 0,""]; 
				_veh setDir (markerDir "vspawn_blu"); 
				createVehicleCrew _veh;  
				_veh disableTIEquipment true;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
//			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 22 - Buy Mohawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			AirSpawnBluCheck = getMarkerpos "vspawna_blu" nearEntities [["air", "car"], 5];  
			if (AirSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_Transport_02_F" createVehicle (getMarkerPos "vspawna_blu");
				_veh setDir (markerDir "vspawna_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 24 - Buy Hunter HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 26 - Buy Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - Buy Ifrit</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 30 - Buy Strider</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{	
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 32 - Buy Strider HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 34 - Buy Armed Ghost Hawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			AirSpawnBluCheck = getMarkerpos "vspawna_blu" nearEntities [["air", "car"], 5];  
			if (AirSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawna_blu");
				_veh setDir (markerDir "vspawna_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh setVehicleAmmo 0.4;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Buy Hellcat unarmed</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			AirSpawnBluCheck = getMarkerpos "vspawna_blu" nearEntities [["air", "car"], 5];  
			if (AirSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_light_03_unarmed_F" createVehicle (getMarkerPos "vspawna_blu");
				_veh setDir (markerDir "vspawna_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 45 - Buy Assistance Truck</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Truck_01_ammo_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addWeaponCargoGlobal ["launch_NLAW_F", 1];
				_veh addWeaponCargoGlobal ["launch_RPG32_F", 1];
				_veh addMagazineCargoGlobal ["HandGrenade", 5];
				_veh addMagazineCargoGlobal ["SmokeShell", 5];
				_veh addMagazineCargoGlobal ["NLAW_F", 5];
				_veh addMagazineCargoGlobal ["RPG32_F", 5];
				_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 10];
				_veh addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
				_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 10];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
				_veh addMagazineCargoGlobal ["150Rnd_762x51_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 10];
				_veh addMagazineCargoGlobal ["30Rnd_9x21_Mag", 10];
				_veh addItemCargoGlobal ["optic_MRCO", 5];
				_veh addItemCargoGlobal ["FirstAidKit", 10];
				_veh addItemCargoGlobal ["Toolkit", 5];
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Medical Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "I_Truck_02_medical_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];	
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Hunter GMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "B_MRAP_01_gmg_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	
	trader_cars_blu addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 55 - Buy MSE-3 Marid</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 55) then
		{
			CarSpawnBluCheck = getMarkerpos "vspawn_blu" nearEntities [["air", "car"], 5];  
			if (CarSpawnBluCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "O_APC_Wheeled_02_rcws_F" createVehicle (getMarkerPos "vspawn_blu");
				_veh setDir (markerDir "vspawn_blu"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];

	trader_cars_blu addAction ["<t color='#FF0000' size='1.0' shadow='2'>&lt;&lt; Back</t>", "player_vt=0;", nil, 1.5, false, false, "", "player_vt!=0"];

		
////// Rot Vehilce	

	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Cars</t>", "player_vt=1;", nil, 1.5, false, false, "", "player_vt==0"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Heli</t>", "player_vt=2;", nil, 1.5, false, false, "", "player_vt==0"];	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>DLC</t>", "player_vt=3;", nil, 1.5, false, false, "", "player_vt==0"];	
	
// Rot DLC 


	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 5 - MB 4WD</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 5) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Offroad_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Qilin Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_T_LSV_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 13 - Prowler Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 13) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_T_LSV_01_unarmed_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 15 - Qilin Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 15) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_T_LSV_02_armed_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Prowler Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_T_LSV_01_armed_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];	

	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Kart</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Kart_01_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - M-900 Hummingbird</t>", {
	player_vt=0;		
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Heli_Light_01_civil_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Bank</t>", {
	player_vt=0;		
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_bench_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Empty</t>", {
	player_vt=0;		
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];	
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Huron</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_red" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Heli_Transport_03_F" createVehicle (getMarkerPos "vspawndlc_red");
				_veh setDir (markerDir "vspawndlc_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};	
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
// Normale vehicle
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 1 - Buy ATV</t>", {
	player_vt=0;		
	if (!player_vcooldown) then
	{
		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 		
			player_vcooldown = true;
			_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_red");
			_veh setDir (markerDir "vspawn_red"); 
			sleep 0.5;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			player moveInDriver _veh;
			_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";
			sleep 360;
			player_vcooldown = false;
		} else {hint "vehicle spawnpoint is blocked"};		
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 8 - Buy Hatchback</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 8) then
		{
		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Hatchback_01_sport_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Buy Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 12 - Buy Hunter</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 14 - Buy Little Bird</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{	
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
		AirSpawnRedCheck = getMarkerpos "vspawna_red" nearEntities [["air", "car"], 5];  
		if (AirSpawnRedCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawna_red");
				_veh setDir (markerDir "vspawna_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Armed Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.75;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Quadrocopter (control with UAV Terminal)</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
//		CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
//		if (CarSpawnRedCheck isEqualTo []) then { 	
				player_vcooldown = true;
				_dronespawn = (getmarkerpos "vspawn_red") select 1;  
				_dronespawn = _dronespawn + 15;  
				_Spawnpoint = [(getmarkerpos "vspawn_red") select 0, _dronespawn, (getmarkerpos "vspawn_red") select 2]; 
				_veh = createVehicle ["O_UAV_01_F", _Spawnpoint, [], 0,""]; 
				_veh setDir (markerDir "vspawn_red"); 		
				createVehicleCrew _veh;  
				_veh disableTIEquipment true;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
//			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 22 - Buy Mohawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
			{
			AirSpawnRedCheck = getMarkerpos "vspawna_red" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_Transport_02_F" createVehicle (getMarkerPos "vspawna_red");
				_veh setDir (markerDir "vspawna_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 24 - Buy Hunter HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 26 - Buy Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - Buy Ifrit</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 		
				player_vcooldown = true;
				_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 30 - Buy Strider</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 					
				player_vcooldown = true;
				_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 32 - Buy Strider HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 34 - Buy Armed Ghost Hawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
			{
			AirSpawnRedCheck = getMarkerpos "vspawna_red" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawna_red");
				_veh setDir (markerDir "vspawna_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh setVehicleAmmo 0.4;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Buy Hellcat unarmed</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
			{
			AirSpawnRedCheck = getMarkerpos "vspawna_red" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_light_03_unarmed_F" createVehicle (getMarkerPos "vspawna_red");
				_veh setDir (markerDir "vspawna_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 45 - Buy Assistance Truck</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "B_Truck_01_ammo_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addWeaponCargoGlobal ["launch_NLAW_F", 1];
				_veh addWeaponCargoGlobal ["launch_RPG32_F", 1];
				_veh addMagazineCargoGlobal ["HandGrenade", 5];
				_veh addMagazineCargoGlobal ["SmokeShell", 5];
				_veh addMagazineCargoGlobal ["NLAW_F", 5];
				_veh addMagazineCargoGlobal ["RPG32_F", 5];
				_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 10];
				_veh addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
				_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 10];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
				_veh addMagazineCargoGlobal ["150Rnd_762x51_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 10];
				_veh addMagazineCargoGlobal ["30Rnd_9x21_Mag", 10];
				_veh addItemCargoGlobal ["optic_MRCO", 5];
				_veh addItemCargoGlobal ["FirstAidKit", 10];
				_veh addItemCargoGlobal ["Toolkit", 5];
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Medical Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "I_Truck_02_medical_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];	
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Hunter GMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_MRAP_01_gmg_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	
	trader_cars_red addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 55 - Buy MSE-3 Marid</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 55) then
			{
			CarSpawnRedCheck = getMarkerpos "vspawn_red" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "O_APC_Wheeled_02_rcws_F" createVehicle (getMarkerPos "vspawn_red");
				_veh setDir (markerDir "vspawn_red"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];

	trader_cars_red addAction ["<t color='#FF0000' size='1.0' shadow='2'>&lt;&lt; Back</t>", "player_vt=0;", nil, 1.5, false, false, "", "player_vt!=0"];






	
	trader_dlc_ind addAction ["<t color='#FF0000' size='1.0' shadow='2'>&lt;&lt; Back</t>", "player_dlc=0;", nil, 1.5, false, false, "", "player_dlc!=0"];
	
////// Grün Vehilce	

	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Cars</t>", "player_vt=1;", nil, 1.5, false, false, "", "player_vt==0"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Heli</t>", "player_vt=2;", nil, 1.5, false, false, "", "player_vt==0"];	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>DLC</t>", "player_vt=3;", nil, 1.5, false, false, "", "player_vt==0"];	
	
// dlc ind
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 5 - MB 4WD</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 5) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Offroad_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Qilin Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_T_LSV_02_unarmed_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 13 - Prowler Unarmed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 13) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_T_LSV_01_unarmed_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 15 - Qilin Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 15) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_T_LSV_02_armed_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];

	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Prowler Armed</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_T_LSV_01_armed_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];		
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Kart</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 	
				player_vcooldown = true;
				_veh = "C_Kart_01_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - M-900 Hummingbird</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 	
				player_vcooldown = true;
				_veh = "C_Heli_Light_01_civil_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Bank</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_bench_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 35 - Taru Empty</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 35) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_Heli_Transport_04_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==3"];	
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Huron</t>", {
	player_vt=0;
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			DLCSpawnRedCheck = getMarkerpos "vspawndlc_ind" nearEntities [["air", "car"], 5];  
			if (DLCSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Heli_Transport_03_F" createVehicle (getMarkerPos "vspawndlc_ind");
				_veh setDir (markerDir "vspawndlc_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";			
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};	
	}, nil, 1.5, false, false, "", "player_vt==3"];		
	
// Normale ind	
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 1 - Buy ATV</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
		if (CarSpawnRedCheck isEqualTo []) then { 		
			player_vcooldown = true;
			_veh = "B_Quadbike_01_F" createVehicle (getMarkerPos "vspawn_ind");
			_veh setDir (markerDir "vspawn_ind"); 
			sleep 0.5;
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
			[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
			player moveInDriver _veh;
			_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf";
			sleep 360;
			player_vcooldown = false;
		} else {hint "vehicle spawnpoint is blocked"};		
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 8 - Buy Hatchback</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 8) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "C_Hatchback_01_sport_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 10 - Buy Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 10) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 					
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 12 - Buy Hunter</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 12) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 				
				player_vcooldown = true;
				_veh = "B_MRAP_01_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 14 - Buy Little Bird</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 14) then
		{
			AirSpawnRedCheck = getMarkerpos "vspawna_ind" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 					
				player_vcooldown = true;
				_veh = "B_Heli_Light_01_F" createVehicle (getMarkerPos "vspawna_ind");
				_veh setDir (markerDir "vspawna_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Armed Pickup</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 					
				player_vcooldown = true;
				_veh = "B_G_Offroad_01_armed_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.75;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 20 - Buy Quadrocopter (control with UAV Terminal)</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 20) then
		{
//			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
//			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_dronespawn = (getmarkerpos "vspawn_ind") select 1;  
				_dronespawn = _dronespawn + 15;  
				_Spawnpoint = [(getmarkerpos "vspawn_ind") select 0, _dronespawn, (getmarkerpos "vspawn_ind") select 2]; 
				_veh = createVehicle ["I_UAV_01_F", _Spawnpoint, [], 0,""]; 
				_veh setDir (markerDir "vspawn_ind"); 					
				createVehicleCrew _veh;  
				_veh disableTIEquipment true;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
//			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 22 - Buy Mohawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 22) then
		{
			AirSpawnRedCheck = getMarkerpos "vspawna_ind" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_Transport_02_F" createVehicle (getMarkerPos "vspawna_ind");
				_veh setDir (markerDir "vspawna_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 24 - Buy Hunter HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 24) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_MRAP_01_hmg_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 26 - Buy Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 26) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Truck_02_covered_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 28 - Buy Ifrit</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 28) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_MRAP_02_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 30 - Buy Strider</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 30) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_MRAP_03_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 32 - Buy Strider HMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 32) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_MRAP_03_hmg_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.5;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};	
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 34 - Buy Armed Ghost Hawk</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 34) then
		{
			AirSpawnRedCheck = getMarkerpos "vspawna_ind" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Heli_Transport_01_camo_F" createVehicle (getMarkerPos "vspawna_ind");
				_veh setDir (markerDir "vspawna_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh setVehicleAmmo 0.4;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 40 - Buy Hellcat unarmed</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 40) then
		{
			AirSpawnRedCheck = getMarkerpos "vspawna_ind" nearEntities [["air", "car"], 5];  
			if (AirSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Heli_light_03_unarmed_F" createVehicle (getMarkerPos "vspawna_ind");
				_veh setDir (markerDir "vspawna_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addBackpack "B_Parachute";
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==2"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 45 - Buy Assistance Truck</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 45) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_Truck_01_ammo_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addWeaponCargoGlobal ["launch_NLAW_F", 1];
				_veh addWeaponCargoGlobal ["launch_RPG32_F", 1];
				_veh addMagazineCargoGlobal ["HandGrenade", 5];
				_veh addMagazineCargoGlobal ["SmokeShell", 5];
				_veh addMagazineCargoGlobal ["NLAW_F", 5];
				_veh addMagazineCargoGlobal ["RPG32_F", 5];
				_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 10];
				_veh addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
				_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_green", 10];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
				_veh addMagazineCargoGlobal ["150Rnd_762x51_Box", 5];
				_veh addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 10];
				_veh addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01", 10];
				_veh addMagazineCargoGlobal ["30Rnd_9x21_Mag", 10];
				_veh addItemCargoGlobal ["optic_MRCO", 5];
				_veh addItemCargoGlobal ["FirstAidKit", 10];
				_veh addItemCargoGlobal ["Toolkit", 5];
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Medical Zamak</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "I_Truck_02_medical_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];	
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 50 - Buy Hunter GMG</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 50) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "B_MRAP_01_gmg_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];
	
	trader_cars_ind addAction ["<t color='#00CC00' size='1.0' shadow='2'>Rank 55 - Buy MSE-3 Marid</t>", {
	player_vt=0;	
	if (!player_vcooldown) then
	{
		_info = player_stats select 0 call getRankInfo;
		_rank = _info select 0;
		if (_rank >= 55) then
		{
			CarSpawnRedCheck = getMarkerpos "vspawn_ind" nearEntities [["air", "car"], 5];  
			if (CarSpawnRedCheck isEqualTo []) then { 			
				player_vcooldown = true;
				_veh = "O_APC_Wheeled_02_rcws_F" createVehicle (getMarkerPos "vspawn_ind");
				_veh setDir (markerDir "vspawn_ind"); 
				sleep 0.5;
				clearWeaponCargoGlobal _veh;
				clearMagazineCargoGlobal _veh;
				clearItemCargoGlobal _veh;
				_veh setVehicleAmmo 0.3;
				_veh disableTIEquipment true;
				_veh addMPEventHandler ["mpkilled",{_this spawn deleteWreck}];
				[_veh, "despawnVehicle", false, false] spawn BIS_fnc_MP;
				player moveInDriver _veh;
				_nil = [360] execVM "vehicle-shop\academy_vehCountdown.sqf"; 
				sleep 360;
				player_vcooldown = false;
			} else {hint "vehicle spawnpoint is blocked"};		
		};
	} else {hint format ["Your vehicle cooldown is active. Please wait another %1 minutes!",[((timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];};
	}, nil, 1.5, false, false, "", "player_vt==1"];

	trader_cars_ind addAction ["<t color='#FF0000' size='1.0' shadow='2'>&lt;&lt; Back</t>", "player_vt=0;", nil, 1.5, false, false, "", "player_vt!=0"];






