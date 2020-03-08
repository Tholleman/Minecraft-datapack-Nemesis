scoreboard players set amount nem_num 13
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_stray dummy "Nemesis Nemesis Progress"
scoreboard players add @s nem_stray 0
execute if score @s nem_stray < amount nem_num run scoreboard players operation rng nem_num = @s nem_stray
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=stray] add nemesis
execute if score rng nem_num matches 0..2 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.4f}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 3..5 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:5}]},Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1},{tag:{Enchantments:[{id:projectile_protection,lvl:4}]},id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1},{id:"minecraft:chainmail_helmet",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6..8 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:1,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 9..11 at @e[tag=nemesis] run summon minecraft:bat ~ ~ ~ {Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]}]}
execute if score rng nem_num matches 12 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Nemesis has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:stray
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_stray=..12}] nem_stray 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_stray
tp @e[tag=nemesis] ~ -64 ~