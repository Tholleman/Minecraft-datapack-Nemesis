# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 6

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Endermite before a random one is summoned
scoreboard objectives add nem_endermite dummy "Nemesis Endermite Progress"
scoreboard players add @s nem_endermite 0
execute if score @s nem_endermite < amount nem_num run scoreboard players operation rng nem_num = @s nem_endermite

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=endermite] add nemesis

# Summon one of the endermites
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Tundra\"",Passengers:[{id:"minecraft:stray",HandItems:[{id:"minecraft:bow",Count:1},{}],PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Dessert\"",Passengers:[{id:"minecraft:husk",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Dessert\"",Passengers:[{id:"minecraft:rabbit",RabbitType:99,PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:creeper",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1},{}],PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:spider",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:witch",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:zombie",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",Passengers:[{id:"minecraft:zombie_villager",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",Passengers:[{id:"minecraft:silverfish",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",Passengers:[{id:"minecraft:slime",Size:3,PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",Passengers:[{id:"minecraft:blaze",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",Passengers:[{id:"minecraft:magma_cube",Size:3,PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",Passengers:[{id:"minecraft:wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1},{}],PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",Passengers:[{id:"minecraft:pillager",HandItems:[{id:"minecraft:crossbow",Count:1},{}],PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",Passengers:[{id:"minecraft:vindicator",HandItems:[{id:"minecraft:iron_axe",Count:1},{}],PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",Passengers:[{id:"minecraft:evoker",PersistenceRequired:1b}],PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Endermite has warped around to collect other mobs","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:endermite
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_endermite=..5}] nem_endermite 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_endermite
