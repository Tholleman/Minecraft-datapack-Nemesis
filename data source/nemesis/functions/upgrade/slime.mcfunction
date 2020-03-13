\var name Slime
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_slime
\var mobId slime
\var amount 5

\file setup.mctemplate

# Summon one of the Slimes
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"stacked slime","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Stacked Slime\"",
	<<defaultData>>,
	Size:2,
	Passengers:[
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>}
	]
}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"big slime","color":"green"}
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Big Slime\"",
	<<defaultData>>,
	Size:9
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"absorbing slime","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Absorbing Slime\"",
	<<defaultData>>,
	<<sticky>>,
	Size:1,
	ActiveEffects:[
		# Speed
		{Id:1,Amplifier:3,Duration:2147483647},

		# Fire Resistance
		{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b}
	]
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"loving father","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Loving father\"",
	<<defaultData>>,
	Size:4,
	Passengers:[
		{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:splash_potion",
				Count:1,
				tag:{CustomPotionEffects:[
					# Speed
					{Id:1,Amplifier:4,Duration:1200},

					# Strength
					{Id:5,Amplifier:1,Duration:1200},

					# Regeneration
					{Id:10,Amplifier:4,Duration:1200},

					# Fire Resistance
					{Id:12,Amplifier:0,Duration:1200},

					# Invisibility
					{Id:14,Amplifier:0,Duration:1200}
				]}
			}
		}
	]
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"burned slime","color":"green"}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
	CustomName:"\"Burned Slime\"",
	<<defaultData>>,
	Size:3
}

\file teardown.mctemplate
