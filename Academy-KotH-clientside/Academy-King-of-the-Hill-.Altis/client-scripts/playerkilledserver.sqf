if (isServer) then 
{
	_unit = _this select 0;
	_killer = _this select 1;
	_playerUID	= getPlayerUID _killer;
	_data = format["selectPlayerStats:%1", _playerUID] call KOTH_fnc_single;
	_donator = _data select 4;
	
	//only real kills
	if (isPlayer _unit && isPlayer _killer) then
	{
		//no selfkill
		if(_unit != _killer) then
		{
			if (_killer isKindOf "Man") then
			{
				//teamkill
				if ((faction _unit) != (faction _killer)) then
				{

					player_stats_add = [100,1,0];
					owner _killer publicVariableClient "player_stats_add";


					player_stats_add = [0,0,1];
					owner _unit publicVariableClient "player_stats_add";
				};
			}
			else //kill with vehicle
			{

				player_stats_add = [100,1,0];
				_crew = crew _killer;
				
				{owner _x publicVariableClient "player_stats_add";} forEach _crew;
			
				player_stats_add = [0,0,1];
				owner _unit publicVariableClient "player_stats_add";
			};
		}
		else
		{
			player_stats_add = [0,0,1];
			owner _unit publicVariableClient "player_stats_add";
		};
	}; 
};