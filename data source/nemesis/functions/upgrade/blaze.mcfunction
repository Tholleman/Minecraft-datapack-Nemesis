\var name Blaze
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_blaze
\var mobId blaze
\var amount 5

\file setup.mctemplate

# Summon one of the blazes

# A subjugator demon
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
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
\clevel 2
/execute if score rng nem_num matches 0 run tellraw @s {"text":"Subjugator","color":"green"}

# A collection of speed demons
\repeat 4
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Speed Demon\"",
	<<defaultData>>,
	# Speed
	ActiveEffects:[{Id:1,Amplifier:4,Duration:2147483647}]
}
\clevel 2
/execute if score rng nem_num matches 1 run tellraw @s {"text":"Speed Demon","color":"green"}

# A large collection of demons
\repeat 8
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Inferno\"",
	<<defaultData>>
}
\clevel 2
/execute if score rng nem_num matches 2 run tellraw @s {"text":"Inferno","color":"green"}

# A fire demon
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
	CustomName:"\"Pyromaniac\"",
	<<defaultData>>
}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~ ~-1 ~ ~ ~1 ~ lava replace air
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,0.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,1.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[1.0d,0.3d,-1.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,1.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[0.0d,0.3d,-1.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,0.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,1.0d]}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Motion:[-1.0d,0.3d,-1.0d]}
\clevel 2
/execute if score rng nem_num matches 3 run tellraw @s {"text":"Pyromaniac","color":"green"}

\var blazePassenger 
	id:"minecraft:blaze",
	CustomName:"\"Large Demon\"",
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}],
	<<defaultData>>
# A large demon
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:blaze ~ ~ ~ {
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
\clevel 2
/execute if score rng nem_num matches 4 run tellraw @s {"text":"Large Demon","color":"green"}

\file teardown.mctemplate
