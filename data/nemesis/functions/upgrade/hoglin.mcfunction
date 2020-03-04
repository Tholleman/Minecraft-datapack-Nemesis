scoreboard players set amount nem_num 7
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_piglin dummy "Nemesis Piglin Progress"
scoreboard players add @s nem_piglin 0
execute if score @s nem_piglin < amount nem_num run scoreboard players operation rng nem_num = @s nem_piglin
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=piglin] add nemesis
tellraw @s "//TODO: hoglin upgrade"
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Piglin has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:piglin
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_piglin=..6}] nem_piglin 1
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_piglin