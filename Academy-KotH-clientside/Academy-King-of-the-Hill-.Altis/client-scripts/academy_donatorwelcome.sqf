// File: academy_donatorWelcome.sqf
// Date: 24.02.16
// Author: BrezZZz

waitUntil {alive player};
waitUntil {!isNil "player_info"};
sleep 10;
waitUntil {alive player};
waitUntil {!isNil "player_info"};
sleep 10;
waitUntil {alive player};
waitUntil {!isNil "player_info"};

_donator = player_info select 1;
if (_donator == 0) then {	
	[format["<t size='0.6' shadow='2' >Welcome %1! Read the Rules and Have Fun! www.Academy-KotH.de</t>",(name player)], 0, [safezoneY + safezoneH - 0.2,0.7], 10, 1, 0, 1] spawn bis_fnc_dynamictext;  
};	
if ((_donator == 1) || (_donator == 2) || (_donator == 3)) then {	
	[format["<t size='0.6' shadow='2' >Welcome %1! Thanks for your Donation! Donator LvL %2 unlocked</t>",(name player),(_donator)], 0, [safezoneY + safezoneH - 0.2,0.7], 10, 1, 0, 1] spawn bis_fnc_dynamictext;  
};
if (_donator == 6) then {	
	[format["<t size='0.6' shadow='2' >Welcome %1! VIP Unlocked !!!</t>",(name player),(_donator)], 0, [safezoneY + safezoneH - 0.2,0.7], 10, 1, 0, 1] spawn bis_fnc_dynamictext;  
};
if ((_donator != 0) && (_donator != 1) && (_donator != 2) && (_donator != 3)) then {	
	[format["<t size='0.6' shadow='2' >Welcome %1! www.Academy-KotH.de</t>",(name player),(_donator)], 0, [safezoneY + safezoneH - 0.2,0.7], 10, 1, 0, 1] spawn bis_fnc_dynamictext;  
};