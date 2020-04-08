\file blaze.txt

\var amount 4
\file templates/rng.txt

\var hungry {<<hungerId>>,Amplifier:4,<<maxDuration>>,<<noParticles>>}

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Doubled Creeper","color":"green"}
/execute if <<step>> 0 run summon minecraft:creeper ~ ~ ~ {
	<<customName>>:"\"Doubled Creeper\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<explosionRadius>>:6,
	<<fuse>>:60,
	# 20 hearts
	<<effects>>:[{<<healthBoostId>>,Amplifier:4,<<maxDuration>>},<<hungry>>]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Stormy","color":"green"}
/execute if <<step>> 1 run summon minecraft:creeper ~ ~ ~ {
	<<customName>>:"\"Stormy\"",
	<<persistent>>,
	<<powered>>,
	<<silent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:0.6f},
		{<<setMovementSpeed>>:0.2f}
	],
	<<effects>>:[<<invisibility>>,<<hungry>>]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Disguised","color":"green"}
/execute if <<step>> 2 run summon minecraft:creeper ~ ~ ~ {
	<<customName>>:"\"Disguised\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[<<invisibility>>,<<hungry>>],
	<<passengers>>:[{id:"minecraft:bat"}]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Missile","color":"green"}
\repeat 3
/execute if <<step>> 3 run summon minecraft:creeper ~ ~ ~ {
	<<customName>>:"\"Missile\"",
	<<persistent>>,
	<<fuse>>:10,
	<<onFire>>,
	<<effects>>:[{<<fireResistanceId>>,Amplifier:0,<<maxDuration>>},<<hungry>>],
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.5f},
		{<<setMaxHealth>>:10}
	]
}

\file templates/rng_teardown.txt
