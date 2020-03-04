scoreboard players set amount nem_num 3
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_evoker dummy "Nemesis Evoker Progress"
scoreboard players add @s nem_evoker 0
execute if score @s nem_evoker < amount nem_num run scoreboard players operation rng nem_num = @s nem_evoker
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=evoker] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],HandItems:[{id:"minecraft:crossbow",Count:1},{}],}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],HandItems:[{id:"minecraft:crossbow",Count:1},{}],}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],HandItems:[{id:"minecraft:crossbow",Count:1},{}],}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],CanPickUpLoot:1b,HandItems:[{id:"minecraft:crossbow",tag:{Enchantments:[{id:quick_charge,lvl:3},{id:piercing,lvl:4}]},Count:1},{}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],CanPickUpLoot:1b,HandItems:[{id:"minecraft:crossbow",tag:{Enchantments:[{id:quick_charge,lvl:3},{id:piercing,lvl:4}]},Count:1},{}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,PatrolLeader:1b,Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.maxHealth",Base:40},{Name:"generic.knockbackResistance",Base:0.33f}],HandItems:[{id:"minecraft:crossbow",tag:{Enchantments:[{id:multishot,lvl:1},{id:quick_charge,lvl:3}]},Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}],ArmorDropChances:[0F,0F,0F,0F]}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Evoker has increased the raid","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:evoker
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_evoker=..2}] nem_evoker 1
tag @e[tag=nemesis] remove nemesis
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_evoker