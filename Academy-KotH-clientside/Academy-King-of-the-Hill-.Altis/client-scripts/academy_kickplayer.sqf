// Simple Kick from Marker pos.
// Author: BrezZZz

_kick_marker = getMarkerPos "kick_marker";

while {true} do
{
   if (alive player) then
   {
	   if (_kick_marker distance player < 30) then 
	   {     
			sleep 0.2;
			player setVariable ["KickVar", 666, true];
	   };

	};
};
