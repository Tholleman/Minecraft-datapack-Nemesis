# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 3

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Magma Cube before a random one is summoned
scoreboard objectives add nem_magma_cube dummy "Nemesis Magma Cube Progress"
scoreboard players add @s nem_magma_cube 0
execute if score @s nem_magma_cube < amount nem_num run scoreboard players operation rng nem_num = @s nem_magma_cube

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=magma_cube] add nemesis

# Summon one of the Magma Cubes
# Reverse pyramid
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Size:1,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Size:2,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:magma_cube",PersistenceRequired:1b,Size:3,Attributes:[{Name:"generic.followRange",Base:64}]}]}]}]}

# Bad potion effects on death
# Slowness
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:2, Amplifier:4,Duration:80}]}}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# Instant Damage
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7, Amplifier:4,Duration:80}]}}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# Weakness
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Amplifier:4,Duration:80}]}}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# Wither
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:20,Amplifier:4,Duration:80}]}}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# Levitation
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:25,Amplifier:4,Duration:80}]}}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}

# Selfish looters
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:3,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Magma Cube has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:magma_cube
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_magma_cube=..2}] nem_magma_cube 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_magma_cube
