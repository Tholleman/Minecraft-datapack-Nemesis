scoreboard players set amount nem_num 7
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_ravager dummy "Nemesis Ravager Progress"
scoreboard players add @s nem_ravager 0
execute if score @s nem_ravager < amount nem_num run scoreboard players operation rng nem_num = @s nem_ravager
execute if score rng nem_num matches 0..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 4..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:illusioner ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],HandItems:[{id:"minecraft:bow",Count:1},{}]}
scoreboard players add @s[scores={nem_ravager=..6}] nem_ravager 1
scoreboard players reset rng
scoreboard players reset amount