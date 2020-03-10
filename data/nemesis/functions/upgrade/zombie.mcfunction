scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_zombie dummy "Nemesis Zombie Progress"
scoreboard players add @s nem_zombie 0
execute if score @s nem_zombie < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=zombie] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Patient 0\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Health:40,Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f},{Name:"generic.maxHealth",Base:40},{Name:"generic.attackDamage",Base:4},]}
execute if score rng nem_num matches 0 run tp @e[type=item,distance=..5] ~ ~ ~
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Scavenger\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f}],HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Flaunter\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f}],HandItems:[{id:"minecraft:golden_sword",Count:1},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1},{id:"minecraft:golden_leggings",Count:1},{id:"minecraft:golden_chestplate",Count:1},{id:"minecraft:golden_helmet",Count:1}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Pest\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f}],IsBaby:1,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1},{id:"minecraft:chainmail_leggings",Count:1},{id:"minecraft:chainmail_chestplate",Count:1},{id:"minecraft:chainmail_helmet",Count:1}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {CustomName:"\"Tank\"",PersistenceRequired:1b,CanPickUpLoot:1b,CanBreakDoors:1b,HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],Health:80,Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f},{Name:"generic.maxHealth",Base:80},{Name:"generic.knockbackResistance",Base:0.8f},{Name:"generic.movementSpeed",Base:0.2f},{Name:"generic.attackDamage",Base:6},],HandItems:[{id:"minecraft:stone_sword",Count:1},{id:"minecraft:shield",Count:1}],ArmorItems:[{id:"minecraft:iron_boots",Count:1},{id:"minecraft:iron_leggings",Count:1},{id:"minecraft:iron_chestplate",Count:1},{id:"minecraft:iron_helmet",Count:1}]}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Zombie has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:zombie
tag @e[tag=nemesis] remove nemesis
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_zombie=..4}] nem_zombie 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombie
tp @e[tag=nemesis] ~ -64 ~