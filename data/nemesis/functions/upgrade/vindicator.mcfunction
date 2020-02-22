# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 7

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Evoker before a random one is summoned
scoreboard objectives add nem_vindicator dummy "Nemesis Vindicator Progress"
scoreboard players add @s nem_vindicator 0
execute if score @s nem_vindicator < amount nem_num run scoreboard players operation rng nem_num = @s nem_vindicator

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=vindicator] add nemesis

# Summon one of the evokers
execute if score rng nem_num matches 0..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 2..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 4..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:illusioner ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:bow",Count:1},{}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Vindicator has increased the raid","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:vindicator
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_vindicator=..6}] nem_vindicator 1

tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_vindicator
