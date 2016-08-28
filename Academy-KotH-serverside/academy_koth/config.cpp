/*
	Author: AFC~Gagi2~
	Contact: gagi2@austrian-funclan.com
*/
class CfgPatches {
	class academy_koth {
		units[] = {};
		weapons[] = {};
		academy_koth = 0.1;
		requiredVersion = 1.36;
		requiredAddons[] = {};
	};
};
class CfgFunctions {
	class academy_koth
	{
		class main {
			file = "academy_koth";
			class preInit {
				preInit = 1;
			};
		};
	};
};