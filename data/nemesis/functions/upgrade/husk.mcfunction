# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Husk before a random one is summoned
scoreboard objectives add nem_husk dummy "Nemesis Husk Progress"
scoreboard players add @s nem_husk 0
execute if score @s nem_husk < amount nem_num run scoreboard players operation rng nem_num = @s nem_husk

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=husk] add nemesis

# Summon one of the husks
# 11 resistance
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# 1  speed
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# 5  strength
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:5,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:5,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:5,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:5,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# 7  instant damage
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:1}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:1}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:1}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:1}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
# Mix
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:11,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:5,Amplifier:1,Duration:1200}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:4,Duration:1}]},Count:1}}],PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Husk has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:husk
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_husk=..4}] nem_husk 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_husk
