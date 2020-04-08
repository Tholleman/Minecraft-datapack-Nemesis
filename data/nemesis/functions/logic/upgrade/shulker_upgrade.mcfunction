scoreboard players set amount nem_num 3
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_shulker dummy "Nemesis Shulker Progress"
scoreboard players add @s nem_shulker 0
execute if score @s nem_shulker < amount nem_num run scoreboard players operation rng nem_num = @s nem_shulker
execute if score rng nem_num matches 0 at @e[type=minecraft:shulker,distance=..64] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 1 at @e[type=minecraft:shulker,distance=..64] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 at @e[type=minecraft:shulker,distance=..64] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F]}
scoreboard players add @s[scores={nem_shulker=..2}] nem_shulker 1
scoreboard players reset rng
scoreboard players reset amount