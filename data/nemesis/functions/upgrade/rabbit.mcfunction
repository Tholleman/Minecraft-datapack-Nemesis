scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_rabbit dummy "Nemesis Rabbit Progress"
scoreboard players add @s nem_rabbit 0
execute if score @s nem_rabbit < amount nem_num run scoreboard players operation rng nem_num = @s nem_rabbit
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=rabbit] add nemesis
execute if score rng nem_num matches 0..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b}
execute if score rng nem_num matches 1..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b}
execute if score rng nem_num matches 2..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b,CanPickUpLoot:1b}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Bunny has multiplied","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:rabbit
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_rabbit=..3}] nem_rabbit 1
tag @e[tag=nemesis] remove nemesis
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_rabbit