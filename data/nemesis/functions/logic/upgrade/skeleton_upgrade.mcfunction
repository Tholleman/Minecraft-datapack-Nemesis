scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_skeleton dummy "Nemesis Skeleton Progress"
scoreboard players add @s nem_skeleton 0
execute if score @s nem_skeleton < amount nem_num run scoreboard players operation rng nem_num = @s nem_skeleton
data modify entity @e[tag=nemesis,tag=nem_skeleton_zombie,limit=1] PersistenceRequired set value 0b
execute if entity @e[tag=nemesis,tag=nem_skeleton_zombie] run function nemesis:logic/upgrade/zombie
data modify entity @e[tag=nemesis,tag=nem_skeleton_blaze,limit=1] PersistenceRequired set value 0b
execute if entity @e[tag=nemesis,tag=nem_skeleton_blaze] run function nemesis:logic/upgrade/blaze
data modify entity @e[tag=nemesis,tag=nem_skeleton_wither_skeleton,limit=1] PersistenceRequired set value 0b
execute if entity @e[tag=nemesis,tag=nem_skeleton_wither_skeleton] run function nemesis:logic/upgrade/wither_skeleton
execute if score rng nem_num matches 0 run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Zombie\"",Tags:["nem_skeleton_zombie"],PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:5}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:7105634}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:4602788}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:175790}},Count:1},{id:"minecraft:zombie_head",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 1 run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Blaze\"",Tags:["nem_skeleton_blaze"],PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:flame,lvl:1}]},Count:1},{}],HandDropChances:[0F,0F],Fire:1277951,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Wither Skeleton\"",Tags:["nem_skeleton_wither_skeleton"],PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.attack_damage",Base:12}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
scoreboard players add @s[scores={nem_skeleton=..3}] nem_skeleton 1
scoreboard players reset rng
scoreboard players reset amount