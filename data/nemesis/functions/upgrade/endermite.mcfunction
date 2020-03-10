scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_endermite dummy "Nemesis Endermite Progress"
scoreboard players add @s nem_endermite 0
execute if score @s nem_endermite < amount nem_num run scoreboard players operation rng nem_num = @s nem_endermite
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=endermite] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Tundra\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:stray",HandItems:[{id:"minecraft:bow",Count:1},{}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Dessert\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:husk",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Dessert\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:rabbit",RabbitType:99,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:creeper",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:skeleton",HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:spider",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:witch",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:zombie",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Plains\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:zombie_villager",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:silverfish",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Underground\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:slime",Size:3,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:blaze",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:magma_cube",Size:3,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Nether\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:pillager",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:crossbow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:vindicator",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {CustomName:"\"Raid\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:evoker",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Endermite has warped around to collect other mobs","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:endermite
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_endermite=..5}] nem_endermite 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_endermite
tp @e[tag=nemesis] ~ -64 ~