\file magma_cube.txt

\var amount 3
\file templates/rng.txt

# Reverse pyramid
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Reverse pyramid","color":"green"}
/execute if <<step>> 0 run summon minecraft:magma_cube ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<size>>:0,
	<<passengers>>:[{
		id:"minecraft:magma_cube",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		<<size>>:1,
		<<passengers>>:[{
			id:"minecraft:magma_cube",
			<<persistent>>,
			<<attributes>>:[<<maxFollowRange>>],
			<<size>>:2,
			<<passengers>>:[{
				id:"minecraft:magma_cube",
				<<persistent>>,
				<<attributes>>:[<<maxFollowRange>>],
				<<size>>:3
			}]
		}]
	}]
}

# Bad potion effects on death
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"lingering potions","color":"green"}
\var start execute if <<step>> 1 run summon minecraft:magma_cube ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<size>>:2,
	<<passengers>>:[{
		id:"minecraft:potion",
		Potion:{
			id:"minecraft:lingering_potion",
			Count:1,
			tag:{CustomPotionEffects:[
\var end 
			]}
		}
	}],
}
/<<start>>{<<slowId>>,Amplifier:4,Duration:80}<<end>>
/<<start>>{<<damageId>>,Amplifier:4,Duration:80}<<end>>
/<<start>>{<<weaknessId>>,Amplifier:4,Duration:80}<<end>>
/<<start>>{<<witherId>>,Amplifier:4,Duration:80}<<end>>
/<<start>>{<<levitationId>>,Amplifier:4,Duration:80}<<end>>

# Selfish looters
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"looters","color":"green"}
\var looterData <<looter>>,<<persistent>>,<<attributes>>:[<<maxFollowRange>>]
\repeat 1
/execute if <<step>> 2 run summon minecraft:magma_cube ~ ~ ~ {<<size>>:3,<<looterData>>}
\repeat 2
/execute if <<step>> 2 run summon minecraft:magma_cube ~ ~ ~ {<<size>>:2,<<looterData>>}
\repeat 4
/execute if <<step>> 2 run summon minecraft:magma_cube ~ ~ ~ {<<size>>:1,<<looterData>>}
\repeat 8
/execute if <<step>> 2 run summon minecraft:magma_cube ~ ~ ~ {<<size>>:0,<<looterData>>}

\file templates/rng_teardown.txt