scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_silverfish dummy "Nemesis Silverfish Progress"
scoreboard players add @s nem_silverfish 0
execute if score @s nem_silverfish < amount nem_num run scoreboard players operation rng nem_num = @s nem_silverfish
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=silverfish] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"Zipper\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40},{Name:"generic.movementSpeed",Base:0.4f}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"Burrower\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40},{Name:"generic.knockbackResistance",Base:1f}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {CustomName:"\"an infestation of Silverfish\"",PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:infested_stone_bricks replace minecraft:stone_bricks
execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:infested_stone replace minecraft:stone
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Silverfish has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:silverfish
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_silverfish=..3}] nem_silverfish 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_silverfish
tp @e[tag=nemesis] ~ -64 ~