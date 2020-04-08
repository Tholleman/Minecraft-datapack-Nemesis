scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_spider dummy "Nemesis Spider Progress"
scoreboard players add @s nem_spider 0
execute if score @s nem_spider < amount nem_num run scoreboard players operation rng nem_num = @s nem_spider
execute if score rng nem_num matches 0 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:9}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 1 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f}]}
execute if score rng nem_num matches 2 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:10,Amplifier:2,Duration:2147483647}]}
execute if score rng nem_num matches 3 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f},{Name:"generic.attack_damage",Base:6},{Name:"generic.knockback_resistance",Base:1}]}
execute if score rng nem_num matches 4 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air
execute if score rng nem_num matches 4 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Allied Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}]}
execute if score rng nem_num matches 5 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air
execute if score rng nem_num matches 5 run summon minecraft:spider ~ ~ ~ {CustomName:"\"Infested Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]},{id:"minecraft:cave_spider",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]},{id:"minecraft:cave_spider",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]},{id:"minecraft:cave_spider",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}]}
scoreboard players add @s[scores={nem_spider=..5}] nem_spider 1
scoreboard players reset rng
scoreboard players reset amount