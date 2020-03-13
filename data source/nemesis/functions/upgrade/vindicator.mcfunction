\var name Vindicator
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_vindicator
\var mobId vindicator
\var amount 6

\file raid setup.mctemplate

# Summon one of the pillagers
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"1 ravager","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"2 ravagers","color":"green"}
\repeat 2
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"fire ravager","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
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
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"pillager ravager","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:pillager",
		<<defaultData>>,
		<<sticky>>,
		HandItems:[{id:"minecraft:crossbow",Count:1},{}],
		<<noHandDrop>>
	}]
}
\var vindicator {
		id:"minecraft:vindicator",
		<<defaultData>>,
		<<sticky>>,
		HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>
	}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"vindicator ravager","color":"green"}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[
		<<vindicator>>,
		<<vindicator>>
	]
}
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"evoker ravager","color":"green"}
/execute if <<step>> 5 at @e[tag=nemesis] run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:evoker",
		<<defaultData>>,
		<<sticky>>,
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

\file teardown no kill.mctemplate
