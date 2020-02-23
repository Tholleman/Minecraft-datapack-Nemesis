# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Illusioner before a random one is summoned
scoreboard objectives add nem_illusioner dummy "Nemesis Illusioner Progress"
scoreboard players add @s nem_illusioner 0
execute if score @s nem_illusioner < amount nem_num run scoreboard players operation rng nem_num = @s nem_illusioner

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=illusioner] add nemesis

# Summon one of the evokers
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:22,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:10,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1, Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}

#  1 speed
# 10 regeneration
# 12 fire resistance
# 14 invisibility
# 22 absorption

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Illusioner has increased the raid","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:illusioner
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_illusioner=..4}] nem_illusioner 1

tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_illusioner
