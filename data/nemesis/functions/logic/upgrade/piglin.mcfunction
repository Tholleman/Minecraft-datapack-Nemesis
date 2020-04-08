execute unless entity @e[tag=nem_uninstall] run function nemesis:logic/upgrade/piglin_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Piglin took a look at your items","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:piglin
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_piglin