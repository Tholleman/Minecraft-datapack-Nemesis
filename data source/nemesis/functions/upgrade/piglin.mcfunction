\var name Piglin
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_piglin
\var mobId piglin
\var amount 8
\var warnDefault <<warnNoTag>>
\var message The Piglin took a look at your items

# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
/scoreboard players set amount nem_num <<amount>>

# Create a random number between 0 and the amount: [0, amount>
/execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
/scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each nemesis before a random one is summoned
/scoreboard objectives add <<scoreboardName>> dummy "Nemesis <<name>> Progress"
/scoreboard players add @s <<scoreboardName>> 0
/execute if score @s <<scoreboardName>> < amount nem_num run scoreboard players operation rng nem_num = @s <<scoreboardName>>

/execute if entity @e[tag=nem_uninstall] run scoreboard players set rng nem_num -1

\var selector @e[limit=5,type=item,distance=..5,sort=random]

\var hideData data modify entity @s Item.tag.HideFlags set value 63
\var expensive data modify entity @s Item.tag.RepairCost set value 100
\var binding data modify entity @s Item.tag.Enchantments append value {id:"minecraft:binding_curse",lvl:1s}
\var one data modify entity @s Item.Count set value 1
\var vanishing data modify entity @s Item.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}
\var grindstone data remove entity @s Item.tag.Enchantments
\var remove kill @s

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"expensive for anvil","color":"green"}
/execute if <<step>> 0 as <<selector>> run <<expensive>>
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"hide all data","color":"green"}
/execute if <<step>> 1 as <<selector>> run <<hideData>>
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"curse of binding","color":"green"}
/execute if <<step>> 2 as <<selector>> run <<binding>>
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"reduce amount to 1","color":"green"}
/execute if <<step>> 3 as <<selector>> run <<one>>
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"curse of vanishing","color":"green"}
/execute if <<step>> 4 as <<selector>> run <<vanishing>>
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"remove all enchantments","color":"green"}
/execute if <<step>> 5 as <<selector>> run <<grindstone>>
\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"destroy the item","color":"green"}
/execute if <<step>> 6 as <<selector>> run <<remove>>

\clevel 2
/execute if <<step>> 7 run tellraw @s {"text":"all actions","color":"green"}
/execute if <<step>> 7 as <<selector>> run <<remove>>
/execute if <<step>> 7 as <<selector>> run <<one>>
/execute if <<step>> 7 as <<selector>> run <<hideData>>
/execute if <<step>> 7 as <<selector>> run <<expensive>>
/execute if <<step>> 7 as <<selector>> run <<binding>>
/execute if <<step>> 7 as <<selector>> run <<vanishing>>
/execute if <<step>> 7 as <<selector>> run <<grindstone>>

\file teardown no kill.mctemplate
