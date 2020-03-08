scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_vindicator dummy "Nemesis Vindicator Progress"
scoreboard players add @s nem_vindicator 0
execute if score @s nem_vindicator < amount nem_num run scoreboard players operation rng nem_num = @s nem_vindicator
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=vindicator] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Fire:1277951,HandDropChances:[0F,0F],HandItems:[{id:"minecraft:wooden_sword",Count:1,tag:{Enchantments:[{id:fire_aspect,lvl:2}]}},{}],ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:pillager",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:crossbow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:vindicator",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F]},{id:"minecraft:vindicator",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:evoker",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,PatrolLeader:1b,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}]}]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Vindicator has increased the raid","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:vindicator
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_vindicator=..5}] nem_vindicator 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_vindicator