scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_rabbit dummy "Nemesis Rabbit Progress"
scoreboard players add @s nem_rabbit 0
execute if score @s nem_rabbit < amount nem_num run scoreboard players operation rng nem_num = @s nem_rabbit
execute if score rng nem_num matches 0..3 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 1..3 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 2..3 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
execute if score rng nem_num matches 3 run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048}]}
scoreboard players add @s[scores={nem_rabbit=..3}] nem_rabbit 1
scoreboard players reset rng
scoreboard players reset amount