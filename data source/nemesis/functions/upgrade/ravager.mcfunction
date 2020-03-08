\var name Ravager
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_ravager
\var mobId ravager
\var amount 7

\file raid setup.mctemplate

# Summon one of the evokers
/execute if score rng nem_num matches 0..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
/execute if score rng nem_num matches 2..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
/execute if score rng nem_num matches 4..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {<<defaultData>>}
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:illusioner ~ ~ ~ {<<defaultData>>,HandItems:[{id:"minecraft:bow",Count:1},{}]}

\file raid teardown.mctemplate
