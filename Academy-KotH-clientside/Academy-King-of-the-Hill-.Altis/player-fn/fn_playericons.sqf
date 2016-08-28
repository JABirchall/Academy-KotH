/*
	File:
		fn_playericons.sqf
		
	Author:
		itstrap / https://github.com/nerdalertdk
	
	Description:
		Icons over players head with donator support,
		This is made for http://academy-koth.de/ 
		Others may not use or redistribute the script.
	
	Parameters:
		None
	
	Returns:
		None
*/
{
    private _unit       = (vehicle _x);
    private _player = (vehicle player);
    private _distance = _player distance2D _unit;
 
    if(
        alive _unit && { side _unit isEqualto playerSide && _distance < viewDistance }
    ) then
    {
        private _text   = "";
        private _donator    = _x getVariable ["donatorLevel", 0];
        private _pos        = (_unit modelToWorldVisual (_unit selectionPosition "head"));
        _pos set [2, (_pos select 2) + 0.7];
		
		if ( _distance < 50 ) then [{_text = (name _unit)} , {_text = ""}];
		
		private _icon = switch (side _unit) do
		{
			case RESISTANCE:	{call currMissionDir + "images\igui_side_indep_ca";};
			case WEST:		{call currMissionDir + "images\igui_side_blufor_ca";};
			case east:		{call currMissionDir + "images\igui_side_opfor_ca";};
			default			{"a3\ui_f\data\map\Diary\Icons\playerciv_ca";};
		};
		
		if ( _donator == 1 ) then { _icon = format["%1_donator1",_icon]; };
		if ( _donator == 2 ) then { _icon = format["%1_donator2",_icon]; };
		if ( _donator > 2 ) then { _icon = format["%1_donator3",_icon]; };
		
		drawIcon3D[format["%1.paa",_icon],[1,1,1,0.8],_pos,0.65,0.65,0,_text,2,0.03,"PuristaMedium"];
	};
//} count allUnits - [player]; // WORKS WITH AI
} count allPlayers - [(vehicle player)]; // ONLY PLAYERS