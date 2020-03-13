\var name Ravager
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_ravager
\var mobId ravager
\var amount 7

\file raid setup.mctemplate

# Summon one of the evokers
\clevel 2
/execute if <<step>> 0..1 run tellraw @s {"text":"1 evoker","color":"green"}
/execute if <<step>> 0..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 2..3 run tellraw @s {"text":"2 evokers","color":"green"}
/execute if <<step>> 2..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 4..5 run tellraw @s {"text":"3 evokers","color":"green"}
/execute if <<step>> 4..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"3 evokers and an illusioner","color":"green"}
/execute if <<step>> 6 at @e[tag=nemesis] run summon minecraft:illusioner ~ ~ ~ {<<defaultData>>,HandItems:[{id:"minecraft:bow",Count:1},{}]}

\file teardown no kill.mctemplate
