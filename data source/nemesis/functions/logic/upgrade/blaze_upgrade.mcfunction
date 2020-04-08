\file blaze.txt

\var amount 5
\file templates/rng.txt

# A subjugator demon
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Subjugator","color":"green"}
/execute if <<step>> 0 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<noHandDrop>>,
	<<handItems>>:[{id:"minecraft:stone_sword",Count:1},{}],
	<<passengers>>:[
		{
			id:"minecraft:blaze",
			<<customName>>:"\"Subjugator\"",
			<<persistent>>,
			<<attributes>>:[<<maxFollowRange>>]
		}
	]
}

# A collection of speed demons
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Speed Demons","color":"green"}
\repeat 4
/execute if <<step>> 1 run summon minecraft:blaze ~ ~ ~ {
	<<customName>>:"\"Speed Demon\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[{<<speedId>>,Amplifier:4,<<maxDuration>>}]
}

# A large collection of demons
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Inferno","color":"green"}
\repeat 8
/execute if <<step>> 2 run summon minecraft:blaze ~ ~ ~ {
	<<customName>>:"\"Inferno\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}

# A fire demon
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Pyromaniac","color":"green"}
/execute if <<step>> 3 run summon minecraft:blaze ~ ~ ~ {
	<<customName>>:"\"Pyromaniac\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}
/execute if <<step>> 3 run fill ~ ~-1 ~ ~ ~1 ~ lava replace air
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,0.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,1.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,-1.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,1.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,-1.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,0.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,1.0d]}
/execute if <<step>> 3 run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,-1.0d]}

# A large demon
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Large Demon","color":"green"}
\var blazePassenger 
	id:"minecraft:blaze",
	<<customName>>:"\"Large Demon\"",
	<<effects>>:[<<invisibility>>],
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
/execute if <<step>> 4 run summon minecraft:blaze ~ ~ ~ {
	<<customName>>:"\"Large Demon\"",
	<<effects>>:[<<invisibility>>],
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<passengers>>:[
		{<<blazePassenger>>},
		{<<blazePassenger>>},
		{<<blazePassenger>>},
		{
			<<blazePassenger>>,
			<<passengers>>:[
				{
					id:"minecraft:magma_cube",
					<<customName>>:"\"Large Demon\"",
					Size:1,
					<<persistent>>,
					<<attributes>>:[<<maxFollowRange>>]
				}
			]
		}
	]
}

\file templates/rng_teardown.txt
