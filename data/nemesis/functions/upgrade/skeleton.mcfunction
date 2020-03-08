scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_skeleton dummy "Nemesis Skeleton Progress"
scoreboard players add @s nem_skeleton 0
execute if score @s nem_skeleton < amount nem_num run scoreboard players operation rng nem_num = @s nem_skeleton
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=skeleton] add nemesis
execute if entity @e[tag=nem_skeleton_zombie,tag=nemesis] run function nemesis:upgrade/zombie
execute if entity @e[tag=nem_skeleton_blaze,tag=nemesis] run function nemesis:upgrade/blaze
execute if entity @e[tag=nem_skeleton_wither_skeleton,tag=nemesis] run function nemesis:upgrade/wither_skeleton
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Zombie\"",Tags:["nem_skeleton_zombie"],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:7105634}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:4602788}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:175790}},Count:1},{id:"minecraft:zombie_head",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {CustomName:"\"Stray\"",Tags:["nem_skeleton_stray"],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Blaze\"",Tags:["nem_skeleton_blaze"],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:flame,lvl:1}]},Count:1},{}],HandDropChances:[0F,0F],Fire:1277951,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {CustomName:"\"Wither Skeleton\"",Tags:["nem_skeleton_wither_skeleton"],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.attackDamage",Base:12}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Skeleton thinks it has found its long lost identity","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:skeleton
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_skeleton=..3}] nem_skeleton 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_skeleton
tp @e[tag=nemesis] ~ -64 ~