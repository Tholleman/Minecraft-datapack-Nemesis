\var name Evoker
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_evoker
\var mobId evoker
\var amount 3

\file raid setup.mctemplate

\var defaultData <<defaultData>>,<<noHandDrop>>

\var fireworks {
		id:"minecraft:firework_rocket",
		Count:4b,
		tag:{Fireworks:{
			Flight:1b,
			Explosions:[{
				Type:1,
				Flicker:1b,
				Colors:[I;16633688,15891724,8390921,15761171]
			}]
		}}
	}

# Summon one of the pillagers
\repeat 3
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<defaultData>>,
	HandItems:[{id:"minecraft:crossbow",Count:1},<<fireworks>>],
}

\repeat 2
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<defaultData>>,
	CanPickUpLoot:1b,
	HandItems:[
		{
			id:"minecraft:crossbow",
			tag:{Enchantments:[
				{id:quick_charge,lvl:3},
				{id:piercing,lvl:4}
			]},
			Count:1
		},
		<<fireworks>>
	]
}

/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<persistent>>,
	CanPickUpLoot:1b,
	PatrolLeader:1b,

	Health:40,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:40},
		{Name:"generic.knockbackResistance",Base:0.33f}
	<<attributeEnd>>,

	HandItems:[
		{
			id:"minecraft:crossbow",
			tag:{Enchantments:[
				{id:multishot,lvl:1},
				{id:quick_charge,lvl:3}
			]},
			Count:1
		},
		<<fireworks>>
	],
	<<noHandDrop>>,

	ArmorItems:[
		{},
		{},
		{},
		{
			id:"minecraft:white_banner",
			Count:1b,
			tag:{
				BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},
				display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}
			}
		}
	],
	<<noArmorDrop>>
}

\file teardown no kill.mctemplate
