scoreboard players set amount nem_num 6
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_zombified_pi dummy "Nemesis Zombified Piglin Progress"
scoreboard players add @s nem_zombified_pi 0
execute if score @s nem_zombified_pi < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombified_pi
execute if entity @e[tag=nem_uninstall] run scoreboard players set rng nem_num -1
execute unless entity @e[tag=nem_uninstall] run summon zombified_piglin ~ ~ ~ {CustomName:"\"Bait\"",CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run tp @e[type=item,distance=..5] ~ ~ ~
execute if score rng nem_num matches 0 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:40}],Health:40,CustomName:"\"Heart\""}
execute if score rng nem_num matches 1 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4}],CustomName:"\"Gluteus maximus\""}
execute if score rng nem_num matches 2 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1}],CustomName:"\"Rectus abdominis\""}
execute if score rng nem_num matches 3 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.armor",Base:4},{Name:"generic.armorToughness",Base:4}],CustomName:"\"Pectoralis major\""}
execute if score rng nem_num matches 4 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.attackDamage",Base:15}],CustomName:"\"Biceps brachii\""}
execute if score rng nem_num matches 5 as @e[type=minecraft:zombified_piglin,distance=..64,limit=5,sort=random] run data merge entity @s {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.knockbackResistance",Base:1},{Name:"generic.armor",Base:4},{Name:"generic.armorToughness",Base:4},{Name:"generic.attackKnockback",Base:10},{Name:"generic.attackDamage",Base:15}],Health:40,CustomName:"\"Ultimum cadaver\""}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Zombified Piglin has spread the power","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:zombified_piglin
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_zombified_pi=..5}] nem_zombified_pi 1
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombified_pi