# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Zombie before a random one is summoned
scoreboard objectives add nem_zombie dummy "Nemesis Zombie Progress"
scoreboard players add @s nem_zombie 0
execute if score @s nem_zombie < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=zombie] add nemesis

# Summon one of the zombies
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Patient 0\"",PersistenceRequired:1b,CanPickUpLoot:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64},{Name:"generic.attackDamage",Base:4},{Name:"zombie.spawnReinforcements",Base:1f}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Stalker\"",PersistenceRequired:1b,CanPickUpLoot:0b,Health:15,Attributes:[{Name:"generic.maxHealth",Base:15},{Name:"generic.followRange",Base:64}],Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Sprinter\"",PersistenceRequired:1b,CanPickUpLoot:0b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.4f},{Name:"generic.movementSpeed",Base:0.4f},{Name:"generic.attackDamage",Base:4}],Silent:1,HandItems:[{id:"minecraft:wooden_sword",tag:{Enchantments:[{id:knockback,lvl:4}]},Count:1},{}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Possessed Corpse\"",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.3f},{Name:"generic.attackDamage",Base:5}],Fire:1277951,Silent:1,CanBreakDoors:1,HandItems:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}],ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Tank\"",PersistenceRequired:1b,CanPickUpLoot:0b,Health:80,Attributes:[{Name:"generic.maxHealth",Base:80},{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.8f},{Name:"generic.movementSpeed",Base:0.2f},{Name:"generic.attackDamage",Base:6},{Name:"zombie.spawnReinforcements",Base:0.4f}],CanBreakDoors:1,HandItems:[{id:"minecraft:stone_sword",Count:1},{id:"minecraft:shield",Count:1}],ArmorItems:[{id:"minecraft:iron_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:iron_helmet",Count:1}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Zombie has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:zombie
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_zombie=..4}] nem_zombie 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombie
