\file piglin.txt

\var amount 8
\file templates/rng.txt

\var selector @e[limit=5,type=item,distance=..5,sort=random]

\var expensive data modify entity @s Item.tag.RepairCost set value 100
\var hideData data modify entity @s Item.tag.HideFlags set value 63
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

\file templates/rng_teardown.txt