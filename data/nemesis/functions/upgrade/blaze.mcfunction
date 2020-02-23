# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each blaze before a random one is summoned
scoreboard objectives add nem_blaze dummy "Nemesis Blaze Progress"
scoreboard players add @s nem_blaze 0
execute if score @s nem_blaze < amount nem_num run scoreboard players operation rng nem_num = @s nem_blaze

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=blaze] add nemesis

# Summon one of the blazes

# A subjugator demon
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"\"Subjugator\"",HandItems:[{id:"minecraft:stone_sword",Count:1},{}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:blaze",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}

# A collection of speed demons
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}

# A large collection of demons
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}

# A fire demon
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Pyromaniac\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:lava"},Time:1b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~ ~-1 ~ ~ ~1 ~ lava replace air
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,0.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,-1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,-1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,0.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,-1.0d]}

# A large demon
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:magma_cube",CustomName:"\"Large Demon\"",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Blaze has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:blaze
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_blaze=..4}] nem_blaze 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up 
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_blaze

