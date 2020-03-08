scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_ghast dummy "Nemesis Ghast Progress"
scoreboard players add @s nem_ghast 0
execute if score @s nem_ghast < amount nem_num run scoreboard players operation rng nem_num = @s nem_ghast
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=ghast] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the immortal\"",PersistenceRequired:1b,Silent:1,Health:300,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:300},{Name:"generic.knockbackResistance",Base:1f}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the abundant\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the undetectable\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {CustomName:"\"the gate\"",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]},{id:"minecraft:wither_skeleton",PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]}]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Ghast has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:ghast
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_ghast=..3}] nem_ghast 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_ghast
tp @e[tag=nemesis] ~ -64 ~