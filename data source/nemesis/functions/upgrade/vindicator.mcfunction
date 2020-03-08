\var name Vindicator
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_vindicator
\var mobId vindicator
\var amount 6

\file raid setup.mctemplate

# Summon one of the pillagers
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
\repeat 2
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Fire:1277951,
	HandDropChances:[0F,0F],
	HandItems:[
		{
			id:"minecraft:wooden_sword",
			Count:1,
			tag:{Enchantments:[
				{id:fire_aspect,lvl:2}
			]}
		},
		{}
	],
	ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}]
}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:pillager",
		<<defaultData>>,
		CanPickUpLoot:1b,
		HandItems:[{id:"minecraft:crossbow",Count:1},{}],
		<<noHandDrop>>
	}]
}
\var vindicator {
		id:"minecraft:vindicator",
		<<defaultData>>,
		CanPickUpLoot:1b,
		HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>
	}
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[
		<<vindicator>>,
		<<vindicator>>
	]
}
/execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:evoker",
		<<defaultData>>,
		CanPickUpLoot:1b,
		PatrolLeader:1b,
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
		]
	}]
}

\file raid teardown.mctemplate
