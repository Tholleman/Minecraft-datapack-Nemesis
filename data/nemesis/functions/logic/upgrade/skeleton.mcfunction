execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=minecraft:skeleton] add nemesis
execute as @e[tag=nemesis,nbt={PersistenceRequired:1b}] unless entity @s[tag=nem_skeleton_zombie] unless entity @s[tag=nem_skeleton_blaze] unless entity @s[tag=nem_skeleton_wither_skeleton] run tag @s remove nemesis
execute if entity @e[tag=nemesis] at @e[tag=nemesis] run function nemesis:logic/upgrade/skeleton_upgrade
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Skeleton thinks it has found its long lost identity","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:skeleton
tp @e[tag=nemesis] ~ -128 ~
kill @e[tag=nemesis]
tag @e[tag=nemesis] remove nemesis
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_skeleton