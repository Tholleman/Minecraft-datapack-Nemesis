\var name Witch
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_witch
\var mobId witch
\var amount 7

\file setup.mctemplate

\var start at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {
	<<defaultData>>,
	<<sticky>>,
	Passengers:[{
		id:"minecraft:potion",
		Potion:{
			id:"minecraft:lingering_potion",
			Count:1,
			tag:{CustomPotionEffects:[
\var end 
			]}
		}
	}]
}

# Summon one of the witches
# Hunger
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"hunger witch","color":"green"}
\var witch0 <<start>>{Id:17,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 0 <<witch0>>

# Weakness
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"weakness witch","color":"green"}
\var witch1 <<start>>{Id:18,Amplifier:1,Duration:600}<<end>>
/execute if <<step>> 1 <<witch1>>

# Mining Fatigue
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"mining fatigue witch","color":"green"}
\var witch2 <<start>>{Id:4,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 2 <<witch2>>

# Nausea
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"nausea witch","color":"green"}
\var witch3 <<start>>{Id:9,Amplifier:0,Duration:300}<<end>>
/execute if <<step>> 3 <<witch3>>

# Blindness
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"blindness witch","color":"green"}
\var witch4 <<start>>{Id:15,Amplifier:0,Duration:600}<<end>>
/execute if <<step>> 4 <<witch4>>

# Curses
\var witch5 
	<<start>>
		# Glowing
		{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},
		# Bad Luck
		{Id:27,Amplifier:1,Duration:2147483647,ShowParticles:0b},
		# Bad Omen
		{Id:31,Amplifier:1,Duration:2147483647,ShowParticles:0b}
	<<end>>
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"curses witch","color":"green"}
/execute if <<step>> 5 <<witch5>>

\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"coven","color":"green"}
/execute if <<step>> 6 <<witch0>>
/execute if <<step>> 6 <<witch1>>
/execute if <<step>> 6 <<witch2>>
/execute if <<step>> 6 <<witch3>>
/execute if <<step>> 6 <<witch4>>
/execute if <<step>> 6 <<witch5>>

\file teardown.mctemplate
