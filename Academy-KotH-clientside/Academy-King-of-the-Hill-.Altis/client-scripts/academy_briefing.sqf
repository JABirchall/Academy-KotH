waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["Academy","Academy KotH"];
player createDiarySubject ["koth","King of the Hill"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord ["Academy",
		[
			"Credits",
				"
				Special thanks goes to<br/><br/>
				
				Austrian-Fun-Clan<br/>
				http://www.austrian-funclan.com Army<br/>
				itsatrap aka Ninja<br/>
				for the extDB port<br/><br/>
				Soolie<br/>
				for the tradermenu<br/><br/>
				Original Start Musik:<br/>
				Discovery Hit - Kevin MacLeod (incompetech.com)<br/>
				Licensed under Creative Commons: By Attribution 3.0 License<br/>
				http://creativecommons.org/licenses/by/3.0/<br/><br/>
				Original End Musik:<br/>
				On the Shore - Kevin MacLeod (incompetech.com)<br/>
				Licensed under Creative Commons: By Attribution 3.0 License<br/>
				http://creativecommons.org/licenses/by/3.0/<br/><br/>
				
				"
		]
	];

	player createDiaryRecord ["Academy",
		[
			"Donations",
				"
				Help us to hold the Academy-Servers<br/>
				www.academy-koth.de/spenden<br/>
				contact info@academy-koth.de<br/><br/>
				"
		]
	];
	player createDiaryRecord ["Academy",
		[
			"Website/Forums",
				"
				<img image='images\academy.paa' width='300' height='100'/><br/><br/>
				www.Academy-KotH.de<br/>
				"
		]
	];
	player createDiaryRecord ["koth",
		[
			" Controls", 
				"
				1 - primary Weapon<br/>
				2 - secondary Weapon<br/>
				3 - Rocket Launcher<br/>
				H - holster/unholster Weapon<br/>
				V (when running) - jump<br/>
				insert - switch Killticker on/off<br/>
				"
		]
	];
	player createDiaryRecord ["koth",
		[
			" Changelog", 
				"
				Any Stuff<br/>
				"
		]
	];
	player createDiaryRecord ["koth",
		[
			"Serverrules", 
				"
				By playing on this server you agree to these rules<br/>
				if you dont like them go and search another server<br/><br/>

				No VoiceChat in Global/Side or in the Lobby<br/>
				Dont play Musik or Sounds ingame<br/>
				No Team Kill or Attack<br/>
				Dont Spam or insult other Players<br/>
				No Mainroadcamping<br/>
				No Spawntruckcamping<br/>
				Dont Campt with HMG outside the Zone<br/>
				Dont Hack, Cheat or Scripting<br/>
				No Kamikaze on Players or Vehicles<br/>
				No Teaming with other Fractions<br/>
				"
		]
	];
	player createDiaryRecord ["koth",
		[
			"Information", 
				"
				Objective: capture and hold the active Object with your team<br/>
				You capture the zone if you are inside it<br/>
				You get xp for kills and for staying near the objective<br/>
				Your team will capture the zone faster when you are inside the inner (black) area<br/>
				First team with 300 Tickets Wins win the hole round<br/>
				Buy weapons and vehicles in your base - use spawntruck to teleport to the frontier (Landcard in base)<br/>
				When a new round starts give the server some time to load your rank it can take a moment<br/>
				"
		]
	];
