\var name Witch
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_witch
\var mobId witch
\var amount 7

\file setup.mctemplate

\var start at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {
	<<defaultData>>,
	CanPickUpLoot:1b,
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
\var witch0 <<start>>{Id:17,Amplifier:1,Duration:1200}<<end>>
/execute if score rng nem_num matches 0 <<witch0>>
# Weakness
\var witch1 <<start>>{Id:18,Amplifier:1,Duration:600}<<end>>
/execute if score rng nem_num matches 1 <<witch1>>
# Mining Fatigue
\var witch2 <<start>>{Id:4,Amplifier:1,Duration:1200}<<end>>
/execute if score rng nem_num matches 2 <<witch2>>
# Nausea
\var witch3 <<start>>{Id:9,Amplifier:0,Duration:300}<<end>>
/execute if score rng nem_num matches 3 <<witch3>>
# Blindness
\var witch4 <<start>>{Id:15,Amplifier:0,Duration:600}<<end>>
/execute if score rng nem_num matches 4 <<witch4>>
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
/execute if score rng nem_num matches 5 <<witch5>>

/execute if score rng nem_num matches 6 <<witch0>>
/execute if score rng nem_num matches 6 <<witch1>>
/execute if score rng nem_num matches 6 <<witch2>>
/execute if score rng nem_num matches 6 <<witch3>>
/execute if score rng nem_num matches 6 <<witch4>>
/execute if score rng nem_num matches 6 <<witch5>>

\file teardown.mctemplate
