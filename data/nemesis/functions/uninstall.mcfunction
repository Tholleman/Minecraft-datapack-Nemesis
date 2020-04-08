tag @s add nem_uninstall
scoreboard objectives remove nem_num
advancement grant @s from nemesis:root
tellraw @s {"text":"The nemesis datapack has been uninstalled\nAll scoreboard objectives and tags have now been removed","italic":true,"color":"green"}
scoreboard objectives add uninstallSuccess dummy
execute store result score @s uninstallSuccess run datapack disable "file/nemesis 1.16.zip"
tellraw @s[scores={uninstallSuccess=0}] {"text":"Disable/remove the zip file to uninstall","italic":true,"color":"red"}
tellraw @s[scores={uninstallSuccess=1..}] {"text":"The datapack is disabled but should be removed to completely uninstall","italic":true,"color":"green"}
scoreboard objectives remove uninstallSuccess
tag @s remove nem_uninstall