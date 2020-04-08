tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=minecraft:rabbit] add nemesis
execute if entity @e[tag=nemesis] at @e[tag=nemesis] run function nemesis:logic/upgrade/rabbit_upgrade
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Bunny has multiplied","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:rabbit
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_rabbit