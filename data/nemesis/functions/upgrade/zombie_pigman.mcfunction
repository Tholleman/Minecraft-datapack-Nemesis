# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Zombie Pigman before a random one is summoned
scoreboard objectives add nem_zombie_pigma dummy "Nemesis Zombie Pigman Progress"
scoreboard players add @s nem_zombie_pigma 0
execute if score @s nem_zombie_pigma < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie_pigma

execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon ...

# Knockback
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackKnockback",Base:10},{Name:"generic.followRange",Base:64}]}
# Max Health
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Health:40,Attributes:[{Name:"generic.maxHealth",Base:40},{Name:"generic.followRange",Base:64}]}
# Speed
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.movementSpeed",Base:0.4},{Name:"generic.followRange",Base:64}]}
# Knockback resistance
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1},{Name:"generic.followRange",Base:64}]}
# Damage
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackDamage",Base:15},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackDamage",Base:15},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackDamage",Base:15},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackDamage",Base:15},{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..64] {PersistenceRequired:1b,Attributes:[{Name:"generic.attackDamage",Base:15},{Name:"generic.followRange",Base:64}]}

execute unless entity @e[tag=nem_uninstall] run summon zombie_pigman ~ ~ ~ {CustomName:"\"Bait\"",CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run tp @e[type=item,distance=..5] ~ ~ ~

execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Zombie Pigman has spread the power","italic":true,"color":"dark_red"}

advancement revoke @s only nemesis:zombie_pigman
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_zombie_pigma=..4}] nem_zombie_pigma 1

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombie_pigma
