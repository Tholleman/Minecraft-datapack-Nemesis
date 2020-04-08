execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=minecraft:zombie_villager] add nemesis
execute as @e[tag=nemesis,nbt={PersistenceRequired:1b}] run tag @s remove nemesis
execute if entity @e[tag=nemesis] at @e[tag=nemesis] run function nemesis:logic/upgrade/zombie_villager_upgrade
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Zombie Villager has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:zombie_villager
tp @e[tag=nemesis] ~ -128 ~
kill @e[tag=nemesis]
tag @e[tag=nemesis] remove nemesis
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombie_villa