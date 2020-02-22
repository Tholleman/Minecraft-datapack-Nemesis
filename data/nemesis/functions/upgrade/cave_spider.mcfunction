# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 6

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Cave Spider before a random one is summoned
scoreboard objectives add nem_cave_spider dummy "Nemesis Cave Spider Progress"
scoreboard players add @s nem_cave_spider 0
execute if score @s nem_cave_spider < amount nem_num run scoreboard players operation rng nem_num = @s nem_cave_spider

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=cave_spider] add nemesis

# Summon one of the nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.attackDamage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.attackDamage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Light Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.attackDamage",Base:5}],ActiveEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Skitter\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.5f}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Leeching Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Chameleon Spider\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],CanPickUpLoot:1b}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],CanPickUpLoot:1b}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Imitator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],CanPickUpLoot:1b}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],CanPickUpLoot:1b}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],CanPickUpLoot:1b}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {CustomName:"\"Innovator\"",PersistenceRequired:1b,Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],CanPickUpLoot:1b}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Cave Spider has laid eggs and started a cluster","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:cave_spider
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_cave_spider=..5}] nem_cave_spider 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up 
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_cave_spider

