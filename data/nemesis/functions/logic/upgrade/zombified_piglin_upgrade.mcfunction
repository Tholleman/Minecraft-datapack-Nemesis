scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_zombified_pi dummy "Nemesis Zombified Piglin Progress"
scoreboard players add @s nem_zombified_pi 0
execute if score @s nem_zombified_pi < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombified_pi
execute if score rng nem_num matches 0 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Heart\"",CanPickUpLoot:1b,PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.max_health",Base:40}]}
execute if score rng nem_num matches 1 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Gluteus maximus\"",CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.4f}]}
execute if score rng nem_num matches 2 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Rectus abdominis\"",CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.knockback_resistance",Base:1f}]}
execute if score rng nem_num matches 3 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Pectoralis major\"",CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.armor",Base:4},{Name:"generic.armor_toughness",Base:4}]}
execute if score rng nem_num matches 4 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Biceps brachii\"",CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.attack_knockback",Base:10},{Name:"generic.attack_damage",Base:15}]}
execute if score rng nem_num matches 5 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CustomName:"\"Ultimum cadaver\"",CanPickUpLoot:1b,PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.movement_speed",Base:0.4f},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.armor",Base:4},{Name:"generic.armor_toughness",Base:4},{Name:"generic.attack_knockback",Base:10},{Name:"generic.attack_damage",Base:15}]}
execute at @s run summon zombified_piglin ~ ~ ~ {CustomName:"\"Bait\"",CanPickUpLoot:1b}
execute at @s run tp @e[type=item,distance=..5] ~ ~ ~
scoreboard players add @s[scores={nem_zombified_pi=..5}] nem_zombified_pi 1
scoreboard players reset rng
scoreboard players reset amount