\file cave_spider.txt

\var amount 6
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Light Spider","color":"green"}
\repeat 3
/execute if <<step>> 0 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Light Spider\"",
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setAttackDamage>>:5}
	],
	<<effects>>:[
		<<glowing>>,
		# Slow Falling
		{<<slowFallingId>>,Amplifier:1,<<maxDuration>>,<<noParticles>>}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Skitter","color":"green"}
\repeat 3
/execute if <<step>> 1 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Skitter\"",
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.5f}
	]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Leeching Spider","color":"green"}
\repeat 3
/execute if <<step>> 2 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Leeching Spider\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[{<<regenerationId>>,Amplifier:1,<<maxDuration>>}]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Chameleon Spider","color":"green"}
\repeat 3
/execute if <<step>> 3 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Chameleon Spider\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[<<invisibility>>]
}

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Imitator","color":"green"}
\repeat 3
/execute if <<step>> 4 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Imitator\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[
		{
			id:"minecraft:skeleton",
			<<persistent>>,
			<<attributes>>:[<<maxFollowRange>>],
			<<looter>>,
			<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
			<<noHandDrop>>
		}
	]
}

\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"Innovator","color":"green"}
\repeat 3
/execute if <<step>> 5 run summon minecraft:cave_spider ~ ~ ~ {
	<<customName>>:"\"Innovator\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[
		{
			id:"minecraft:wither_skeleton",
			<<persistent>>,
			<<attributes>>:[<<maxFollowRange>>],
			<<looter>>,
			<<handItems>>:[{id:"minecraft:stone_sword",Count:1},{}],
			<<noHandDrop>>
		}
	]
}

\file templates/rng_teardown.txt
