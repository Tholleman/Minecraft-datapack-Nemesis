execute unless entity @e[tag=nem_uninstall] run function nemesis:logic/upgrade/zombified_piglin_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Zombified Piglin has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:zombified_piglin
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombified_pi