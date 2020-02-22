# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 4

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Creeper before a random one is summoned
scoreboard objectives add nem_creeper dummy "Nemesis Creeper Progress"
scoreboard players add @s nem_creeper 0
execute if score @s nem_creeper < amount nem_num run scoreboard players operation rng nem_num = @s nem_creeper

# Don't punish the player for uninstalling
execute if entity @e[tag=nem_uninstall] run scoreboard players set rng nem_num -1

# Summon one of the creepers
execute if score rng nem_num matches 0 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Doubled Creeper\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64}],ExplosionRadius:6,Fuse:60,ActiveEffects:[{Id:21,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Stormy\"",powered:1,Silent:1,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.6f},{Name:"generic.movementSpeed",Base:0.2f}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 2 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Disguised\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Passengers:[{id:"minecraft:bat"}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fire:1277951,Attributes:[{Name:"generic.maxHealth",Base:10},{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}],Fuse:10,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fire:1277951,Attributes:[{Name:"generic.maxHealth",Base:10},{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}],Fuse:10,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fire:1277951,Attributes:[{Name:"generic.maxHealth",Base:10},{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}],Fuse:10,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}

execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Creeper has reincarnated into a more powerful version","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:creeper
scoreboard players add @s[scores={nem_creeper=..3}] nem_creeper 1

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_creeper
