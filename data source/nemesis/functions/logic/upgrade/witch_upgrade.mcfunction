\file stray.txt

\var amount 7
\file templates/rng.txt

\var start at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>,
	<<passengers>>:[{
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

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"hunger witch","color":"green"}
\var witch0 <<start>>{<<hungerId>>,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 0 <<witch0>>

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"weakness witch","color":"green"}
\var witch1 <<start>>{<<weaknessId>>,Amplifier:1,Duration:600}<<end>>
/execute if <<step>> 1 <<witch1>>

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"mining fatigue witch","color":"green"}
\var witch2 <<start>>{<<miningFatigueId>>,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 2 <<witch2>>

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"nausea witch","color":"green"}
\var witch3 <<start>>{<<nauseaId>>,Amplifier:0,Duration:300}<<end>>
/execute if <<step>> 3 <<witch3>>

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"blindness witch","color":"green"}
\var witch4 <<start>>{<<blindnessId>>,Amplifier:0,Duration:600}<<end>>
/execute if <<step>> 4 <<witch4>>

# Curses
\var witch5 
	<<start>>
		{<<glowingId>>,Amplifier:0,<<maxDuration>>,<<noParticles>>},
		{<<badLuckId>>,Amplifier:1,<<maxDuration>>,<<noParticles>>},
		{<<badOmenId>>,Amplifier:1,<<maxDuration>>,<<noParticles>>}
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

\file templates/rng_teardown.txt
