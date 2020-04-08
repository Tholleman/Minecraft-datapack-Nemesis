execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=minecraft:pillager] add nemesis
execute if entity @e[tag=nemesis] at @e[tag=nemesis] run function nemesis:logic/upgrade/pillager_upgrade
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Pillager has increased the raid","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:pillager
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_pillager