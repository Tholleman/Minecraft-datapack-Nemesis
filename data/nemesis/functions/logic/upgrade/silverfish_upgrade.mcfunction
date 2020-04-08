scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_silverfish dummy "Nemesis Silverfish Progress"
scoreboard players add @s nem_silverfish 0
execute if score @s nem_silverfish < amount nem_num run scoreboard players operation rng nem_num = @s nem_silverfish
execute if score rng nem_num matches 0 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"Zipper\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40},{Name:"generic.movement_speed",Base:0.4f}]}
execute if score rng nem_num matches 1 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"Burrower\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40},{Name:"generic.knockback_resistance",Base:1f}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 2 run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 3 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng nem_num matches 3 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:infested_stone replace minecraft:stone
scoreboard players add @s[scores={nem_silverfish=..3}] nem_silverfish 1
scoreboard players reset rng
scoreboard players reset amount