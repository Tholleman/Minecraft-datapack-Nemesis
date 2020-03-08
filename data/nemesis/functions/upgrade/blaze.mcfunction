scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_blaze dummy "Nemesis Blaze Progress"
scoreboard players add @s nem_blaze 0
execute if score @s nem_blaze < amount nem_num run scoreboard players operation rng nem_num = @s nem_blaze
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=blaze] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],Passengers:[{id:"minecraft:blaze",CustomName:"\"Subjugator\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Speed Demon\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Inferno\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Pyromaniac\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~ ~-1 ~ ~ ~1 ~ lava replace air
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,0.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,-1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,-1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,0.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,1.0d]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,-1.0d]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:blaze",CustomName:"\"Large Demon\"",ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:magma_cube",CustomName:"\"Large Demon\"",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Blaze has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:blaze
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_blaze=..4}] nem_blaze 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_blaze
tp @e[tag=nemesis] ~ -64 ~