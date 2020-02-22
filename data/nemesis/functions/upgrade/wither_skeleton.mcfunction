# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 4

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Wither Skeleton before a random one is summoned
scoreboard objectives add nem_wither_skele dummy "Nemesis Wither Skeleton Progress"
scoreboard players add @s nem_wither_skele 0
execute if score @s nem_wither_skele < amount nem_num run scoreboard players operation rng nem_num = @s nem_wither_skele

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=wither_skeleton] add nemesis

# Summon one of the wither skeletons
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Stationed Guard\"",PersistenceRequired:1b,CanPickUpLoot:1b,HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:power,lvl:5},{id:punch,lvl:2},{id:flame,lvl:1}]},Count:1},{}],Attributes:[{Name:"generic.followRange",Base:5},{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f},{Name:"generic.attackDamage",Base:20}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Adaptus Astartes\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:iron_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:iron_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Adaptus Custodes\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:golden_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{Count:1,id:"minecraft:golden_boots"},{id:"minecraft:golden_leggings",Count:1},{id:"minecraft:golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Captain-General\"",PersistenceRequired:1b,Health:50,Attributes:[{Name:"generic.maxHealth",Base:50},{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.8f}],HandItems:[{id:"minecraft:diamond_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{Count:1,id:"minecraft:diamond_boots"},{Count:1,id:"minecraft:diamond_leggings"},{Count:1,id:"minecraft:diamond_chestplate"},{id:"minecraft:wither_skeleton_skull",Count:1}],ArmorDropChances:[0F,0F,0F,0.5F]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Wither Skeleton has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:wither_skeleton
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_wither_skele=..3}] nem_wither_skele 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_wither_skele
