# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 13

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Stray before a random one is summoned
scoreboard objectives add nem_stray dummy "Nemesis Stray Progress"
scoreboard players add @s nem_stray 0
execute if score @s nem_stray < amount nem_num run scoreboard players operation rng nem_num = @s nem_stray

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=stray] add nemesis

# Summon one of the strays
execute if score rng nem_num matches 0..2 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.4f}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:2}]},Count:1},{}]}
execute if score rng nem_num matches 3..5 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:punch,lvl:5}]},Count:1},{}],ArmorItems:[{tag:{Enchantments:[{id:projectile_protection,lvl:4}]},id:"minecraft:chainmail_boots",Count:1},{tag:{Enchantments:[{id:projectile_protection,lvl:4}]},id:"minecraft:chainmail_leggings",Count:1},{Count:1,tag:{Enchantments:[{id:projectile_protection,lvl:4}]},id:"minecraft:chainmail_chestplate"},{id:"minecraft:chainmail_helmet",Count:1,tag:{Enchantments:[{id:projectile_protection,lvl:4}]}}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6..8 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:1,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}]}]}
execute if score rng nem_num matches 9..11 at @e[tag=nemesis] run summon minecraft:bat ~ ~ ~ {Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}],ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]}]}
execute if score rng nem_num matches 12 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,Passengers:[{id:"minecraft:stray",PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}]}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Stray has grown more powerful","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:stray
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_stray=..12}] nem_stray 1

# Replace the original killer
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_stray
