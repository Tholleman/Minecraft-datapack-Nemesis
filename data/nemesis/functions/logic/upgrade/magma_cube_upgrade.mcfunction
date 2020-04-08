scoreboard players set amount nem_num 3
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_magma_cube dummy "Nemesis Magma Cube Progress"
scoreboard players add @s nem_magma_cube 0
execute if score @s nem_magma_cube < amount nem_num run scoreboard players operation rng nem_num = @s nem_magma_cube
execute if score rng nem_num matches 0 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:0,Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:1,Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:3}]}]}]}
execute if score rng nem_num matches 1 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:2,Amplifier:4,Duration:80}]}}}],}
execute if score rng nem_num matches 1 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:80}]}}}],}
execute if score rng nem_num matches 1 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Amplifier:4,Duration:80}]}}}],}
execute if score rng nem_num matches 1 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:20,Amplifier:4,Duration:80}]}}}],}
execute if score rng nem_num matches 1 run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:25,Amplifier:4,Duration:80}]}}}],}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:3,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:2,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:2,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:1,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:1,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:1,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:1,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2 run summon minecraft:magma_cube ~ ~ ~ {Size:0,CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
scoreboard players add @s[scores={nem_magma_cube=..2}] nem_magma_cube 1
scoreboard players reset rng
scoreboard players reset amount