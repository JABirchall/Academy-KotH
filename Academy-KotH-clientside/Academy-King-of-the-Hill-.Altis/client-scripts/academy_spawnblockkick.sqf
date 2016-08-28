// 	File: academy_spawnblockkick.sqf
//	Author: BrezZZz

//_admin = player_info select 0;
//if (_admin > 0) exitwith {};

_bluCount = 0;
_redCount = 0;
_indCount = 0;

while {true} do {

	_Radius = 8;

	_distBluDlc = player distance (getMarkerPos "vspawndlc_blu");
	_distBluCar = player distance (getMarkerPos "vspawn_blu");
	_distBluAir = player distance (getMarkerPos "vspawna_blu");

	_distRedDlc = player distance (getMarkerPos "vspawndlc_red");
	_distRedCar = player distance (getMarkerPos "vspawn_red");
	_distRedAir = player distance (getMarkerPos "vspawna_red");

	_distIndDlc = player distance (getMarkerPos "vspawndlc_ind");
	_distIndCar = player distance (getMarkerPos "vspawn_ind");
	_distIndAir = player distance (getMarkerPos "vspawna_ind");


if (side player == west) then {
	if ((_distBluDlc < _Radius) || (_distBluCar < _Radius) || (_distBluAir < _Radius)) then {
		//hint "zu nah digga";		
		_bluCount = _bluCount + 1;
	} else {
		//hint "geht klar alda";
		_bluCount = 0;
	};
};
	
if (side player == east) then {
	if ((_distRedDlc < _Radius) || (_distRedCar < _Radius) || (_distRedAir < _Radius)) then {
		//hint "zu nah digga";		
		_redCount = _redCount + 1;
	} else {
		//hint "geht klar alda";
		_redCount = 0;
	};
};

if (side player == independent) then {
	if ((_distIndDlc < _Radius) || (_distIndCar < _Radius) || (_distIndAir < _Radius)) then {
		//hint "zu nah digga";		
		_indCount = _indCount + 1;
	} else {
		//hint "geht klar alda";
		_indCount = 0;
	};
};
		
	
if (_bluCount == 3) then {
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "PLAIN"];
};
if (_bluCount == 7) then {
	vehicle player setPos [3710,10379,0];
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK FADED", 999];
	sleep 3;
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK IN", 0];		
};	

	
if (_redCount == 3) then {
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "PLAIN"];
};

if (_redCount == 7) then {
	vehicle player setPos [5650,14924,0];
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK FADED", 999];
	sleep 3;
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK IN", 0];	
};	
	
	
if (_indCount == 3) then {
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "PLAIN"];
};

if (_indCount == 7) then {
	vehicle player setPos [5979,12766,0];
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK FADED", 999];
	sleep 3;
	titleText ["Academy-KotH: Dont block the Spawnarea!!!", "BLACK IN", 0];	
};

sleep 5;
	
};