scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_zombie dummy "Nemesis Zombie Progress"
scoreboard players add @s nem_zombie 0
execute if score @s nem_zombie < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie
execute if score rng nem_num matches 0 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Patient 0\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,Health:40,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:6}]}
execute if score rng nem_num matches 0 run tp @e[type=item,distance=..5] ~ ~ ~
execute if score rng nem_num matches 1 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Scavenger\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 2 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Flaunter\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],HandItems:[{id:"minecraft:golden_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:golden_boots",Count:1},{id:"minecraft:golden_leggings",Count:1},{id:"minecraft:golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Pest\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,IsBaby:1,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 4 run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Tank\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,Health:100,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:100},{Name:"generic.knockback_resistance",Base:0.8f},{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.attack_damage",Base:8}],HandItems:[{id:"minecraft:stone_sword",Count:1},{id:"minecraft:shield",Count:1}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:iron_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
scoreboard players add @s[scores={nem_zombie=..4}] nem_zombie 1
scoreboard players reset rng
scoreboard players reset amount