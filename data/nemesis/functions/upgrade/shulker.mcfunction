scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_shulker dummy "Nemesis Shulker Progress"
scoreboard players add @s nem_shulker 0
execute if score @s nem_shulker < amount nem_num run scoreboard players operation rng nem_num = @s nem_shulker
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=shulker] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:generic.maxHealth,Base:20}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:generic.maxHealth,Base:20}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:generic.maxHealth,Base:20}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[0F,0F]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Shulker gains help","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:shulker
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_shulker=..3}] nem_shulker 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_shulker