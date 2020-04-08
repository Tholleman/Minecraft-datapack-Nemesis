execute unless entity @e[tag=nem_uninstall] run function nemesis:logic/upgrade/shulker_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Shulker gains help","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:shulker
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_shulker