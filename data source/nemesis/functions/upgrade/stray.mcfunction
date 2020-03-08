\var name Nemesis
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_stray
\var mobId stray
\var amount 13

\file setup.mctemplate

# Summon one of the strays
/execute if score rng nem_num matches 0..2 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.movementSpeed",Base:0.4f}
	<<attributeEnd>>,
	HandItems:[
		{
			id:"minecraft:bow",
			tag:{Enchantments:[{id:punch,lvl:2}]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}
/execute if score rng nem_num matches 3..5 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {
	<<defaultData>>,

	HandItems:[
		{
			id:"minecraft:bow",
			tag:{Enchantments:[{id:punch,lvl:5}]},
			Count:1},
		{}
	],
	<<noHandDrop>>,

	ArmorItems:[
		{
			id:"minecraft:chainmail_boots",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		},
		{
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			id:"minecraft:chainmail_leggings",
			Count:1
		},
		{
			id:"minecraft:chainmail_chestplate",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		},
		{
			id:"minecraft:chainmail_helmet",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		}
	],
	<<noArmorDrop>>
}
/execute if score rng nem_num matches 6..8 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {
	RabbitType:1,
	Passengers:[{
		id:"minecraft:stray",
		<<defaultData>>,
		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>
	}]
}
/execute if score rng nem_num matches 9..11 at @e[tag=nemesis] run summon minecraft:bat ~ ~ ~ {
	Passengers:[{
		id:"minecraft:stray",
		<<defaultData>>,

		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,

		# Slow Falling
		ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]
	}]
}
/execute if score rng nem_num matches 12 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {
	RabbitType:99,
	Passengers:[{
		id:"minecraft:stray",
		<<defaultData>>,

		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>
	}]
}

\file teardown.mctemplate
