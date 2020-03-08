\var name Husk
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_husk
\var mobId husk
\var amount 5

\file setup.mctemplate

\var start 
	at @e[tag=nemesis] run summon minecraft:husk ~ ~ ~ {
		<<defaultData>>,
		Passengers:[{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:splash_potion",
				tag:{CustomPotionEffects:[
\var end 
				]},Count:1
			}
		}]
	}

# Summon one of the Husks
# 11 resistance
\repeat 4
/execute if score rng nem_num matches 0 <<start>>{Id:11,Amplifier:1,Duration:1200}<<end>>
# 1  speed
\repeat 4
/execute if score rng nem_num matches 1 <<start>>{Id:1,Amplifier:1,Duration:1200}<<end>>
# 5  strength
\repeat 4
/execute if score rng nem_num matches 2 <<start>>{Id:5,Amplifier:1,Duration:1200}<<end>>
# 7  instant damage
\repeat 4
/execute if score rng nem_num matches 3 <<start>>{Id:7,Amplifier:4,Duration:1}<<end>>
# Mix
/execute if score rng nem_num matches 4 <<start>>{Id:11,Amplifier:1,Duration:1200}<<end>>
/execute if score rng nem_num matches 4 <<start>>{Id:1,Amplifier:1,Duration:1200}<<end>>
/execute if score rng nem_num matches 4 <<start>>{Id:5,Amplifier:1,Duration:1200}<<end>>
/execute if score rng nem_num matches 4 <<start>>{Id:7,Amplifier:4,Duration:1}<<end>>

\file teardown.mctemplate