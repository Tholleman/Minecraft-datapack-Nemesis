\file silverfish.txt

\var amount 4
\file templates/rng.txt

# Summon one of the Silverfish
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"zipper","color":"green"}
/execute if <<step>> 0 run summon minecraft:silverfish ~ ~ ~ {
	<<customName>>:"\"Zipper\"",
	<<persistent>>,

	<<health>>:40,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMaxHealth>>:40},
		{<<setMovementSpeed>>:0.4f}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"burrower","color":"green"}
/execute if <<step>> 1 run summon minecraft:silverfish ~ ~ ~ {
	<<customName>>:"\"Burrower\"",
	<<persistent>>,

	<<health>>:40,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMaxHealth>>:40},
		{<<setKnockbackResistance>>:1f}
	]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"6 silverfish","color":"green"}
\repeat 6
/execute if <<step>> 2 run summon minecraft:silverfish ~ ~ ~ {
	<<customName>>:"\"an infestation of Silverfish\"",
	<<persistent>>,

	<<health>>:40,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMaxHealth>>:40}
	]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"infested bricks","color":"green"}
/execute if <<step>> 3 run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:infested_stone_bricks replace minecraft:stone_bricks
/execute if <<step>> 3 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:infested_stone replace minecraft:stone

\file templates/rng_teardown.txt
