# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num 5

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Ravager before a random one is summoned
scoreboard objectives add nem_ravager dummy "Nemesis Ravager Progress"
scoreboard players add @s nem_ravager 0
execute if score @s nem_ravager < amount nem_num run scoreboard players operation rng nem_num = @s nem_ravager

# Don't punish the player for uninstalling
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=ravager] add nemesis

# Summon one of the pillagers
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}],HandItems:[{id:"minecraft:wooden_axe",Count:1},{}],ActiveEffects:[{Id:1,Amplifier:0,Duration:2147483647},{Id:8,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.4f}],HandItems:[{id:"minecraft:stone_axe",tag:{Enchantments:[{id:knockback,lvl:10}]},Count:1},{}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.2f}],HandItems:[{id:"minecraft:iron_axe",Count:1},{}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}],Silent:1,HandItems:[{id:"minecraft:golden_axe",tag:{Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,PatrolLeader:1b,Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.knockbackResistance",Base:0.4f}],HandItems:[{id:"minecraft:diamond_axe",Count:1},{}],ActiveEffects:[{Id:2,Amplifier:2,Duration:2147483647}],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}]}

execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Ravager has increased the raid","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:ravager
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_ravager=..4}] nem_ravager 1

tag @e[tag=nemesis] remove nemesis

# Clean up
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_ravager
