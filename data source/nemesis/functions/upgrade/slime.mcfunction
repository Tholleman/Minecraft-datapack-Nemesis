${var name Slime}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_slime}
${var mobId slime}
${var amount 5}

${file setup.mctemplate}

# Summon one of the Slimes
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Stacked Slime\"",
	<<defaultData>>,
	Size:2,
	Passengers:[
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>},
		{id:"minecraft:slime",Size:1,<<defaultData>>}
	]
};
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Big Slime\"",
	<<defaultData>>,
	Size:9
};
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Absorbing Slime\"",
	<<defaultData>>,
	CanPickUpLoot:1b,
	Size:1,
	ActiveEffects:[
		# Speed
		{Id:1,Amplifier:3,Duration:2147483647},

		# Fire Resistance
		{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b}
	]
};
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:slime ~ ~ ~ {
	CustomName:"\"Loving father\"",
	<<defaultData>>,
	Size:4,
	Passengers:[
		{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:splash_potion",
				Count:1,
				tag:{CustomPotionEffects:[
					# Speed
					{Id:1,Amplifier:4,Duration:1200},

					# Strength
					{Id:5,Amplifier:1,Duration:1200},

					# Regeneration
					{Id:10,Amplifier:4,Duration:1200},

					# Fire Resistance
					{Id:12,Amplifier:0,Duration:1200},

					# Invisibility
					{Id:14,Amplifier:0,Duration:1200}
				]}
			}
		}
	]
};
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
	CustomName:"\"Burned Slime\"",
	<<defaultData>>,
	Size:3
};

${file teardown.mctemplate}
