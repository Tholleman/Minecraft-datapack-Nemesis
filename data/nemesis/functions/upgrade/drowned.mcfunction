# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 8

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Drowned before a random one is summoned
scoreboard objectives add nem_drowned dummy "Nemesis Drowned Progress"
scoreboard players add @s nem_drowned 0
execute if score @s nem_drowned < amount nem_num run scoreboard players operation rng nem_num = @s nem_drowned

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=drowned] add nemesis

# Summon one of the drowned
execute if score rng nem_num matches 0..1 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"an angler Fish\"",PersistenceRequired:1b,CanPickUpLoot:0b,Attributes:[{Name:"generic.followRange",Base:64}],Silent:1,IsBaby:1,ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 2..3 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Diver\"",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:fishing_rod",Count:1},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:white_stained_glass",Count:1}]}
execute if score rng nem_num matches 4..5 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Triton\"",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.5f}],Age:0,HandItems:[{id:"minecraft:trident",Count:1},{}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},{id:"minecraft:chainmail_chestplate",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},{id:"minecraft:golden_helmet",Count:1,tag:{Enchantments:[{id:protection,lvl:4}]}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Triton\"",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.5f}],Age:0,HandItems:[{id:"minecraft:trident",Count:1,tag:{Enchantments:[{id:impaling,lvl:5},{id:loyalty,lvl:3}]}},{}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},{id:"minecraft:chainmail_chestplate",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},{id:"minecraft:golden_helmet",Count:1,tag:{Enchantments:[{id:protection,lvl:4}]}}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {CustomName:"\"Bodyguard\"",PersistenceRequired:1b,CanPickUpLoot:1b,LeftHanded:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{},{id:"minecraft:trident",Count:1}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[2.0d,0.4d,2d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[1.2d,0.3d,1.5d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[1.6d,0.2d,0.1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[1.8d,0.3d,-1.3d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[1.4d,0.3d,-1.9d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.6d,0.2d,1.7d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.4d,0.2d,1.4d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[1.0d,0.2d,-0.1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.2d,0.4d,-1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.8d,0.3d,-1.8d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.2d,0.4d,1.6d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0.4d,0.2d,2.1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[0d,0d,0d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.2d,0.1d,-0.9d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.4d,0.1d,-0.2d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.2d,0.3d,2d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.4d,0.4d,1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.8d,0.2d,0d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-0.6d,0.3d,-1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-1.0d,0.1d,-2d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-2.0d,0.3d,1.7d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-1.8d,0.1d,1d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-1.4d,0.1d,0.2d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-1.6d,0.2d,-1.4d]}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:magma_block"},Time:1,Motion:[-1.2d,0.3d,-1.4d]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Drowned has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:drowned
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_drowned=..7}] nem_drowned 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_drowned
