scoreboard players set amount nem_num 13
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_stray dummy "Nemesis Stray Progress"
scoreboard players add @s nem_stray 0
execute if score @s nem_stray < amount nem_num run scoreboard players operation rng nem_num = @s nem_stray
execute if score rng nem_num matches 0..2 run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.4f}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 3..5 run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:5}]},Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:chainmail_boots",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1},{tag:{Enchantments:[{id:projectile_protection,lvl:4}]},id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1},{id:"minecraft:chainmail_helmet",tag:{Enchantments:[{id:projectile_protection,lvl:4}]},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6..8 run summon minecraft:rabbit ~ ~ ~ {RabbitType:1,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
execute if score rng nem_num matches 9..11 run summon minecraft:bat ~ ~ ~ {Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]}]}
execute if score rng nem_num matches 12 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0F,0F]}]}
scoreboard players add @s[scores={nem_stray=..12}] nem_stray 1
scoreboard players reset rng
scoreboard players reset amount