\file slime.txt

\var amount 5
\file templates/rng.txt

\var defaultData <<persistent>>,<<attributes>>:[<<maxFollowRange>>]

# Summon one of the Slimes
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"stacked slime","color":"green"}
/execute if <<step>> 0 run summon minecraft:slime ~ ~ ~ {
	<<customName>>:"\"Stacked Slime\"",
	<<defaultData>>,
	<<size>>:2,
	<<passengers>>:[
		{id:"minecraft:slime",<<size>>:1,<<defaultData>>},
		{id:"minecraft:slime",<<size>>:1,<<defaultData>>},
		{id:"minecraft:slime",<<size>>:1,<<defaultData>>},
		{id:"minecraft:slime",<<size>>:1,<<defaultData>>}
	]
}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"big slime","color":"green"}
/execute if <<step>> 1 run summon minecraft:slime ~ ~ ~ {
	<<customName>>:"\"Big Slime\"",
	<<defaultData>>,
	<<size>>:9
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"absorbing slime","color":"green"}
/execute if <<step>> 2 run summon minecraft:slime ~ ~ ~ {
	<<customName>>:"\"Absorbing Slime\"",
	<<defaultData>>,
	<<looter>>,
	<<size>>:1,
	<<effects>>:[
		{<<speedId>>,Amplifier:3,<<maxDuration>>},
		{<<fireResistanceId>>,Amplifier:0,<<maxDuration>>,<<noParticles>>}
	]
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"loving father","color":"green"}
/execute if <<step>> 3 run summon minecraft:slime ~ ~ ~ {
	<<customName>>:"\"Loving father\"",
	<<defaultData>>,
	<<size>>:4,
	<<passengers>>:[
		{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:splash_potion",
				Count:1,
				tag:{CustomPotionEffects:[
					{<<speedId>>,Amplifier:4,Duration:1200},
					{<<strengthId>>,Amplifier:1,Duration:1200},
					{<<regenerationId>>,Amplifier:4,Duration:1200},
					{<<fireResistanceId>>,Amplifier:0,Duration:1200},
					{<<invisibilityId>>,Amplifier:0,Duration:1200}
				]}
			}
		}
	]
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"burned slime","color":"green"}
/execute if <<step>> 4 run summon minecraft:magma_cube ~ ~ ~ {
	<<customName>>:"\"Burned Slime\"",
	<<defaultData>>,
	<<size>>:3
}

\file templates/rng_teardown.txt
