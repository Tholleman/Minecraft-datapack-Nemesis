\var name Spider
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_spider
\var mobId spider
\var amount 6

\file setup.mctemplate

# Summon one of the spider
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Light Spider\"",
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.attackDamage",Base:5}
	<<attributeEnd>>,
	ActiveEffects:[
		# Glowing
		{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},

		# Slow Falling
		{Id:28,Amplifier:1,Duration:2147483647,ShowParticles:0b}
	]
}
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Skitter\"",
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.movementSpeed",Base:0.5f}
	<<attributeEnd>>
}
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Chameleon Spider\"",
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]
}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Leeching Spider\"",
	<<defaultData>>,
	# Regeneration
	ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]
}
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Allied Spider\"",
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:skeleton",
		<<defaultData>>,
		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,
		CanPickUpLoot:1b
	}]
}
/execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:spider ~ ~ ~ {
	CustomName:"\"Infested Spider\"",
	<<defaultData>>,
	Passengers:[
		{
			id:"minecraft:cave_spider",
			<<defaultData>>
		},
		{
			id:"minecraft:cave_spider",
			<<defaultData>>
		}
	]
}

\file teardown.mctemplate
