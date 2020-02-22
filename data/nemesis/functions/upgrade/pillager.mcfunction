# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Ravager before a random one is summoned
scoreboard objectives add nem_pillager dummy "Nemesis Pillager Progress"
scoreboard players add @s nem_pillager 0
execute if score @s nem_pillager < amount nem_num run scoreboard players operation rng nem_num = @s nem_pillager

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=pillager] add nemesis

# Summon one of the ravagers
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Fire:1277951,Attributes:[{Name:"generic.followRange",Base:64}],HandDropChances:[0F,0F],HandItems:[{id:"minecraft:wooden_sword",Count:1,tag:{Enchantments:[{id:fire_aspect,lvl:2}]}},{}],ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:pillager",PersistenceRequired:1b,CanPickUpLoot:1b,HandItems:[{id:"minecraft:crossbow",Count:1},{}]}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:vindicator",PersistenceRequired:1b,CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}]},{id:"minecraft:vindicator",PersistenceRequired:1b,CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}]}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],Passengers:[{id:"minecraft:evoker",PersistenceRequired:1b,CanPickUpLoot:1b,PatrolLeader:1b,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}]}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Pillager has increased the raid","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:pillager
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_pillager=..4}] nem_pillager 1

tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_pillager



