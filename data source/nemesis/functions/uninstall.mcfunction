\file constants.txt

/tag @s add <<uninstallTag>>

/scoreboard objectives remove <<numberObjective>>

/advancement grant @s from nemesis:root

/tellraw @s {
	"text":"The nemesis datapack has been uninstalled\n
	        All scoreboard objectives and tags have now been removed",
	"italic":true,
	"color":"green"
}

\var successStorage uninstallSuccess
/scoreboard objectives add <<successStorage>> dummy
/execute store result score @s <<successStorage>> run datapack disable "file/nemesis 1.16.zip"
/tellraw @s[scores={<<successStorage>>=0}] {"text":"Disable/remove the zip file to uninstall","italic":true,"color":"red"}
/tellraw @s[scores={<<successStorage>>=1..}] {"text":"The datapack is disabled but should be removed to completely uninstall","italic":true,"color":"green"}
/scoreboard objectives remove <<successStorage>>

/tag @s remove <<uninstallTag>>
