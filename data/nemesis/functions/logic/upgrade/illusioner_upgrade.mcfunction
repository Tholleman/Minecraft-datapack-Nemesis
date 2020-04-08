scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_illusioner dummy "Nemesis Illusioner Progress"
scoreboard players add @s nem_illusioner 0
execute if score @s nem_illusioner < amount nem_num run scoreboard players operation rng nem_num = @s nem_illusioner
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:22,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:10,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:1,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
scoreboard players add @s[scores={nem_illusioner=..4}] nem_illusioner 1
scoreboard players reset rng
scoreboard players reset amount