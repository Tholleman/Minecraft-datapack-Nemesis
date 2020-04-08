scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_cave_spider dummy "Nemesis Cave Spider Progress"
scoreboard players add @s nem_cave_spider 0
execute if score @s nem_cave_spider < amount nem_num run scoreboard players operation rng nem_num = @s nem_cave_spider
execute if score rng nem_num matches 0 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 0 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 0 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 1 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f}]}
execute if score rng nem_num matches 1 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f}]}
execute if score rng nem_num matches 1 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f}]}
execute if score rng nem_num matches 2 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 2 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 2 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 3 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 4 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 4 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 4 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F]}]}
scoreboard players add @s[scores={nem_cave_spider=..5}] nem_cave_spider 1
scoreboard players reset rng
scoreboard players reset amount