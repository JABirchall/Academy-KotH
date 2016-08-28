// Countdown.sqf

timeleft = _this select 0;
iscooldown = false;

while {true} do {
//hintsilent format ["Fahrzeug Cooldown: %1", [((timeleft)/60)+.01,"MM:SS"] call bis_fnc_timetostring];
iscooldown = true;
if (timeleft < 1) exitWith{};
timeleft = timeleft -10;
sleep 10;
};
iscooldown = false;