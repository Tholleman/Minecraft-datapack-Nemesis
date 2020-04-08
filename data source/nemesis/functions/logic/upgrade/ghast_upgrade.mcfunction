\file evoker.txt

\var amount 4
\file templates/rng.txt

# Summon one of the Ghasts
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"immortal","color":"green"}
/execute if <<step>> 0 run summon minecraft:ghast ~ ~ ~ {
	<<customName>>:"\"the immortal\"",
	<<persistent>>,
	<<silent>>,
	<<health>>:300,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMaxHealth>>:300},
		{<<setKnockbackResistance>>:1f}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"abundant","color":"green"}
\repeat 5
/execute if <<step>> 1 run summon minecraft:ghast ~ ~ ~ {
	<<customName>>:"\"the abundant\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"undetectable","color":"green"}
/execute if <<step>> 2 run summon minecraft:ghast ~ ~ ~ {
	<<customName>>:"\"the undetectable\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	# Invisibility
	<<effects>>:[<<invisibility>>]
}

\var wither_skeleton 
	id:"minecraft:wither_skeleton",
	<<persistent>>,
	<<looter>>,

	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:1f}
	],

	HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
	<<noHandDrop>>,
	<<noArmorDrop>>,

	# Slow Falling
	<<effects>>:[{<<slowFallingId>>,Amplifier:0,<<maxDuration>>,<<noParticles>>}]
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"gate","color":"green"}
/execute if <<step>> 3 run summon minecraft:ghast ~ ~ ~ {
	<<customName>>:"\"the gate\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>}
	]
}

\file templates/rng_teardown.txt
