tag @s add nem_uninstall;

scoreboard objectives remove nem_num;

advancement grant @s from nemesis:root;

tellraw @s {
	"text":"The nemesis datapack has been uninstalled\n
	        All scoreboard objectives and tags have now been removed",
	"italic":true,
	"color":"green"
};

tag @s remove nem_uninstall;
