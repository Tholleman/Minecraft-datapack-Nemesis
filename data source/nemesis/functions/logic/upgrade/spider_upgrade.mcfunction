\file spider.txt

\var amount 6
\file templates/rng.txt

# Summon one of the spider
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"light spider","color":"green"}
/execute if <<step>> 0 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Light Spider\"",
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setAttackDamage>>:9}
	],
	<<effects>>:[
		{<<glowingId>>,Amplifier:0,<<maxDuration>>,<<noParticles>>},
		{<<slowFallingId>>,Amplifier:1,<<maxDuration>>,<<noParticles>>}
	]
}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"skitter","color":"green"}
/execute if <<step>> 1 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Skitter\"",
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.5f}
	]
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"leeching spider","color":"green"}
/execute if <<step>> 2 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Leeching Spider\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[{<<regenerationId>>,Amplifier:2,<<maxDuration>>}]
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"chameleon spider","color":"green"}
/execute if <<step>> 3 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Chameleon Spider\"",
	<<persistent>>,
	<<silent>>,
	<<effects>>:[<<invisibility>>],
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.5f},
		{<<setAttackDamage>>:6},
		{<<setKnockbackResistance>>:1}
	]
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"allied spider","color":"green"}
/execute if <<step>> 4 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air
/execute if <<step>> 4 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Allied Spider\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[{
		id:"minecraft:skeleton",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,
		<<armorItems>>:[
			{id:"minecraft:chainmail_boots",Count:1},
			{id:"minecraft:chainmail_leggings",Count:1},
			{id:"minecraft:chainmail_chestplate",Count:1},
			{id:"minecraft:chainmail_helmet",Count:1}
		]
	}]
}
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"infested spider","color":"green"}
/execute if <<step>> 5 run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:cobweb replace minecraft:air
\var infestation {
	id:"minecraft:cave_spider",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}
/execute if <<step>> 5 run summon minecraft:spider ~ ~ ~ {
	<<customName>>:"\"Infested Spider\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[
		<<infestation>>,
		<<infestation>>,
		<<infestation>>,
		<<infestation>>
	]
}

\file templates/rng_teardown.txt
