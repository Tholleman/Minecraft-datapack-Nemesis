scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_wither_skele dummy "Nemesis Wither Skeleton Progress"
scoreboard players add @s nem_wither_skele 0
execute if score @s nem_wither_skele < amount nem_num run scoreboard players operation rng nem_num = @s nem_wither_skele
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=wither_skeleton] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Stationed Guard\"",PersistenceRequired:1b,CanPickUpLoot:1b,HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:power,lvl:5},{id:punch,lvl:2},{id:flame,lvl:1}]},Count:1},{}],Attributes:[{Name:"generic.followRange",Base:5},{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f},{Name:"generic.attackDamage",Base:20}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run tp @e[type=item,distance=..5] ~ ~ ~
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Adaptus Astartes\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:iron_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Adaptus Custodes\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:golden_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:golden_boots",Count:1},{id:"minecraft:golden_leggings",Count:1},{id:"minecraft:golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Warmaster\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:diamond_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:diamond_boots",Count:1},{id:"minecraft:diamond_leggings",Count:1},{id:"minecraft:diamond_chestplate",Count:1},{id:"minecraft:diamond_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Captain-General\"",PersistenceRequired:1b,Health:50,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:50},{Name:"generic.knockbackResistance",Base:0.8f}],HandItems:[{id:"minecraft:netherite_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1},{id:"minecraft:netherite_leggings",Count:1},{id:"minecraft:netherite_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Wither Skeleton has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:wither_skeleton
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_wither_skele=..4}] nem_wither_skele 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_wither_skele
tp @e[tag=nemesis] ~ -64 ~