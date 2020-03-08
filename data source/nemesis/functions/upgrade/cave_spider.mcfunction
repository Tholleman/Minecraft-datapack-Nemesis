\var name Cave Spider
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_cave_spider
\var mobId cave_spider
\var amount 6
\var message The Cave Spider has laid eggs and started a cluster

\file setup.mctemplate

# Summon one of the cave spiders
\repeat 3
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
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

\repeat 3
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
	CustomName:"\"Skitter\"",
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.movementSpeed",Base:0.5f}
	<<attributeEnd>>
}

\repeat 3
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
	CustomName:"\"Leeching Spider\"",
	<<defaultData>>,
	# Regeneration
	ActiveEffects:[{Id:10,Amplifier:1,Duration:2147483647}]
}

\repeat 3
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
	CustomName:"\"Chameleon Spider\"",
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]
}

\repeat 3
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
	CustomName:"\"Imitator\"",
	<<defaultData>>,
	Passengers:[
		{
			id:"minecraft:skeleton",
			<<defaultData>>,
			CanPickUpLoot:1b,
			HandItems:[
				{id:"minecraft:bow",Count:1},
				{}
			],
			<<noHandDrop>>
		}
	]
}

\repeat 3
/execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:cave_spider ~ ~ ~ {
	CustomName:"\"Innovator\"",
	<<defaultData>>,
	Passengers:[
		{
			id:"minecraft:wither_skeleton",
			<<defaultData>>,
			CanPickUpLoot:1b,
			HandItems:[
				{id:"minecraft:stone_sword",Count:1},
				{}
			],
			<<noHandDrop>>
		}
	]
}

\file teardown.mctemplate
