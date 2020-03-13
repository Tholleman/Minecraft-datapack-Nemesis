\var name Blaze
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_blaze
\var mobId blaze
\var amount 5

\file setup.mctemplate

# Summon one of the blazes

# A subjugator demon
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Subjugator","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	<<defaultData>>,
	<<noHandDrop>>,
	HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
	Passengers:[
		{
			id:"minecraft:blaze",
			CustomName:"\"Subjugator\"",
			<<defaultData>>
		}
	]
}

# A collection of speed demons
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Speed Demon","color":"green"}
\repeat 4
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Speed Demon\"",
	<<defaultData>>,
	# Speed
	ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]
}

# A large collection of demons
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Inferno","color":"green"}
\repeat 8
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Inferno\"",
	<<defaultData>>
}

# A fire demon
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Pyromaniac","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Pyromaniac\"",
	<<defaultData>>
}
/execute if <<step>> 3 at @e[tag=nemesis] run fill ~ ~-1 ~ ~ ~1 ~ lava replace air
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,0.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,1.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,-1.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,1.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,-1.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,0.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,1.0d]}
/execute if <<step>> 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,-1.0d]}

\var blazePassenger 
	id:"minecraft:blaze",
	CustomName:"\"Large Demon\"",
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],
	<<defaultData>>
# A large demon
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Large Demon","color":"green"}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Large Demon\"",
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],
	<<defaultData>>,
	Passengers:[
		{<<blazePassenger>>},
		{<<blazePassenger>>},
		{<<blazePassenger>>},
		{
			<<blazePassenger>>,
			Passengers:[
				{
					id:"minecraft:magma_cube",
					CustomName:"\"Large Demon\"",
					Size:1,
					<<defaultData>>
				}
			]
		}
	]
}

\file teardown.mctemplate
