#include "\ice\tb_main\sys\gameModes\aas_init.sqf";
//Sandstorm
//[player,400,5,100,3,7,0,0.1,0.3,1,0.9,0.4,13,12,15,true,10,2.1,0.1,4,6,0,3.5,17.5] execFSM "Sand.fsm";
//player addEventHandler ["Respawn", {[player,400,5,100,3,7,0,0.1,0.3,1,0.9,0.4,13,12,15,true,10,2.1,0.1,4,6,0,3.5,17.5] execFSM "Sand.fsm";}];

//Goons Sandstorm
//[.55] execVM "goon_dust.sqf";


[] execVM "functions\initFastRope.sqf"; 
player addAction ["Setup Hesco Bunker","functions\setupHesco.sqf","",0,false,true,"",' (getdir cursorTarget - getdir player < 40) && ([cursorTarget] call ICE_fnc_getObjectCategory == "staticweapon") && (count (nearestObjects [player, ["ICE_emptyHescoBagsStack"], 5]) > 0) '];
player addAction ["Setup Sandbag Bunker","functions\setupSandbags.sqf","",0,false,true,"",' (getdir cursorTarget - getdir player < 40) && ([cursorTarget] call ICE_fnc_getObjectCategory == "staticweapon") && (count (nearestObjects [player, ["ICE_emptySandbagsTimberStack"], 5]) > 0) '];

/*if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
if (side player == west) then {
	tf_radio_channel_password = "TB_Blufor";
	tf_radio_channel_name = "Blufor";
};
if (side player == east) then {
	tf_radio_channel_password = "TB_Opfor";
	tf_radio_channel_name = "Opfor";
};
if (side player == resistance) then {
	tf_radio_channel_password = "TB_Independent";
	tf_radio_channel_name = "Independent";
};
*/