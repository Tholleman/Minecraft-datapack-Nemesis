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
/execute if score rng nem_num matches 0 <<start>>12,Amplifier:0<<end>>
# 22 absorption
/execute if score rng nem_num matches 1 <<start>>22,Amplifier:4<<end>>
# 10 regeneration
/execute if score rng nem_num matches 2 <<start>>10,Amplifier:0<<end>>
#  1 speed
/execute if score rng nem_num matches 3 <<start>>1,Amplifier:1<<end>>
# 14 invisibility
/execute if score rng nem_num matches 4 <<start>>14,Amplifier:0<<end>>

\file teardown no kill.mctemplate
