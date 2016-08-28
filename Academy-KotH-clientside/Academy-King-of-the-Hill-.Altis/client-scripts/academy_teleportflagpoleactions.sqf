// Teleport zum Truck
flagpole_blu addAction ["<t color='#FFCC00' size='1.0' shadow='2'>Teleport to Spawn-Truck</t>", {
if(typeName spawntruck_blu == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_blu;
	player removeAllEventHandlers "handleDamage";
	player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	[format ["spawnprotection enabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
	sleep 12;
	player allowDamage true;
	player addEventHandler ["handleDamage", {true}];
	player removeAllEventHandlers "handleDamage"; 
	[format ["spawnprotection disabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
}
else{
	hint format ["Truck was destroyed and will respawn in approximately %1 minutes.", [((time_blue)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
};
}];

flagpole_red addAction ["<t color='#FFCC00' size='1.0' shadow='2'>Teleport to Spawn-Truck</t>", {
if(typeName spawntruck_red == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_red;
	player removeAllEventHandlers "handleDamage";
	player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	[format ["spawnprotection enabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
	sleep 12;
	player allowDamage true;
	player addEventHandler ["handleDamage", {true}];
	player removeAllEventHandlers "handleDamage"; 
	[format ["spawnprotection disabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
}
else{
	hint format ["Truck was destroyed and will respawn in approximately %1 minutes.", [((time_red)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
};
}];

flagpole_ind addAction ["<t color='#FFCC00' size='1.0' shadow='2'>Teleport to Spawn-Truck</t>", {
if(typeName spawntruck_ind == "OBJECT") then
{
	_this select 1 moveincargo spawntruck_ind;
	player removeAllEventHandlers "handleDamage";
	player addEventHandler ["handleDamage", {false}];
	player allowDamage false;
	[format ["spawnprotection enabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
	sleep 12;
	player allowDamage true;
	player addEventHandler ["handleDamage", {true}];
	player removeAllEventHandlers "handleDamage"; 
	[format ["spawnprotection disabled"], "titleTextMessage", player, false] spawn BIS_fnc_MP;
}
else{
	hint format ["Truck was destroyed and will respawn in approximately %1 minutes.", [((time_ind)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
};
}];

///// rankanzeige

flagpole_blu addAction ["<t color='#FFCC00' size='1.0' shadow='2'>check your rank</t>", {_info = player_stats select 0 call getRankInfo; _rank = _info select 0; hint format["your actual rank is: %1", _rank];}];
flagpole_red addAction ["<t color='#FFCC00' size='1.0' shadow='2'>check your rank</t>", {_info = player_stats select 0 call getRankInfo; _rank = _info select 0; hint format["your actual rank is: %1", _rank];}];
flagpole_ind addAction ["<t color='#FFCC00' size='1.0' shadow='2'>check your rank</t>", {_info = player_stats select 0 call getRankInfo; _rank = _info select 0; hint format["your actual rank is: %1", _rank];}];