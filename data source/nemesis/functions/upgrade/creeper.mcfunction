\var name Creeper
\file global.mctemplate
\var scoreboardName nem_creeper
\var mobId creeper
\var amount 4
\var message The Creeper has reincarnated into a more powerful version

\file setup no tag.mctemplate

# Summon one of the creepers
/execute if score rng nem_num matches 0 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Doubled Creeper\"",
	<<defaultData>>,
	ExplosionRadius:6,
	Fuse:60,
	# 20 hearts
	ActiveEffects:[{Id:21,Amplifier:4,Duration:2147483647}]
}
/execute if score rng nem_num matches 1 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Stormy\"",
	<<persistent>>,
	powered:1,
	Silent:1,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:0.6f},
		{Name:"generic.movementSpeed",Base:0.2f}
	<<attributeEnd>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]
}
/execute if score rng nem_num matches 2 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Disguised\"",
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],
	Passengers:[{id:"minecraft:bat"}]
}
\repeat 3
/execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Missile\"",
	<<persistent>>,
	Fuse:10,
	Fire:1277951,
	# Fire Resistance
	ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}],
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:10},
		{Name:"generic.movementSpeed",Base:0.5f}
	<<attributeEnd>>
}

\file teardown no kill.mctemplate
