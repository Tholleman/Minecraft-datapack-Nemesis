\var name Illusioner
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_illusioner
\var mobId illusioner
\var amount 5

\file raid setup.mctemplate

\var start 
	at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {
		<<defaultData>>,
		ActiveEffects:[{Id:
\var end 
		,Duration:2147483647}]
	}

# Summon one of the evokers
# 12 fire resistance
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"fire resistance illusioner","color":"green"}
/execute if <<step>> 0 <<start>>12,Amplifier:0<<end>>
# 22 absorption
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"absorption illusioner","color":"green"}
/execute if <<step>> 1 <<start>>22,Amplifier:4<<end>>
# 10 regeneration
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"regeneration illusioner","color":"green"}
/execute if <<step>> 2 <<start>>10,Amplifier:0<<end>>
#  1 speed
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"speed illusioner","color":"green"}
/execute if <<step>> 3 <<start>>1,Amplifier:1<<end>>
# 14 invisibility
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"invisibility illusioner","color":"green"}
/execute if <<step>> 4 <<start>>14,Amplifier:0<<end>>

\file teardown no kill.mctemplate
