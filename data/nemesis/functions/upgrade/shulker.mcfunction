# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 4

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Shulker before a random one is summoned
scoreboard objectives add nem_shulker dummy "Nemesis Shulker Progress"
scoreboard players add @s nem_shulker 0
execute if score @s nem_shulker < amount nem_num run scoreboard players operation rng nem_num = @s nem_shulker

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=shulker] add nemesis

# Summon one of the nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F],Attributes:[{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F],Attributes:[{Name:generic.followRange,Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F],Attributes:[{Name:generic.followRange,Base:64}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Shulker gains help","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:shulker
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_shulker=..3}] nem_shulker 1

# Replace the original killer
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_shulker
