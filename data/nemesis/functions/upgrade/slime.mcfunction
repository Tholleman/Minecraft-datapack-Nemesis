scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_slime dummy "Nemesis Slime Progress"
scoreboard players add @s nem_slime 0
execute if score @s nem_slime < amount nem_num run scoreboard players operation rng nem_num = @s nem_slime
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=slime] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {CustomName:"\"Stacked Slime\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Size:2,Passengers:[{id:"minecraft:slime",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:slime",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:slime",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]},{id:"minecraft:slime",Size:1,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {CustomName:"\"Big Slime\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Size:9}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {CustomName:"\"Absorbing Slime\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Size:1,ActiveEffects:[{Id:1,Amplifier:3,Duration:2147483647},{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {CustomName:"\"Loving father\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Size:4,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:1,Amplifier:4,Duration:1200},{Id:5,Amplifier:1,Duration:1200},{Id:10,Amplifier:4,Duration:1200},{Id:12,Amplifier:0,Duration:1200},{Id:14,Amplifier:0,Duration:1200}]}}}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {CustomName:"\"Burned Slime\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Size:3}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Slime has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:slime
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_slime=..4}] nem_slime 1
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_slime