# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 4

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Ghast before a random one is summoned
scoreboard objectives add nem_ghast dummy "Nemesis Ghast Progress"
scoreboard players add @s nem_ghast 0
execute if score @s nem_ghast < amount nem_num run scoreboard players operation rng nem_num = @s nem_ghast

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=ghast] add nemesis

# Summon one of the ghasts
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the immortal\"",PersistenceRequired:1b,Health:300,Attributes:[{Name:"generic.maxHealth",Base:300},{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],Silent:1}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the undetectable\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the gate\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Ghast has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:ghast
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_ghast=..3}] nem_ghast 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_ghast
