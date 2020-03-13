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
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"resistance husk","color":"green"}
\repeat 4
/execute if <<step>> 0 <<start>>{Id:11,Amplifier:1,Duration:1200}<<end>>
# 1  speed
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"speed husk","color":"green"}
\repeat 4
/execute if <<step>> 1 <<start>>{Id:1,Amplifier:1,Duration:1200}<<end>>
# 5  strength
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"strength husk","color":"green"}
\repeat 4
/execute if <<step>> 2 <<start>>{Id:5,Amplifier:1,Duration:1200}<<end>>
# 7  instant damage
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"damage husk","color":"green"}
\repeat 4
/execute if <<step>> 3 <<start>>{Id:7,Amplifier:4,Duration:1}<<end>>
# Mix
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Mixed husks","color":"green"}
/execute if <<step>> 4 <<start>>{Id:11,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{Id:1,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{Id:5,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{Id:7,Amplifier:4,Duration:1}<<end>>

\file teardown.mctemplate