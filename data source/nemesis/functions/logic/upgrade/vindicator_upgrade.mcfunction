\file vindicator.txt

\var amount 6
\file templates/rng.txt

\var defaultData <<persistent>>,<<attributes>>:[<<maxFollowRange>>]

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"1 ravager","color":"green"}
/execute if <<step>> 0 run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"2 ravagers","color":"green"}
\repeat 2
/execute if <<step>> 1 run summon minecraft:ravager ~ ~ ~ {<<defaultData>>}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"fire ravager","color":"green"}
/execute if <<step>> 2 run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	<<onFire>>,
	<<handItems>>:[
		{
			id:"minecraft:wooden_sword",
			Count:1,
			tag:{Enchantments:[
				{id:fire_aspect,lvl:2}
			]}
		},
		{}
	],
	<<noHandDrop>>,
	<<effects>>:[{<<fireResistanceId>>,Amplifier:0,<<maxDuration>>}]
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"pillager ravager","color":"green"}
/execute if <<step>> 3 run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:pillager",
		<<defaultData>>,
		<<looter>>,
		HandItems:[{id:"minecraft:crossbow",Count:1},{}],
		<<noHandDrop>>
	}]
}
\var vindicator {
		id:"minecraft:vindicator",
		<<defaultData>>,
		<<looter>>,
		<<handItems>>:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>
	}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"vindicator ravager","color":"green"}
/execute if <<step>> 4 run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	<<passengers>>:[
		<<vindicator>>,
		<<vindicator>>
	]
}
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"evoker ravager","color":"green"}
/execute if <<step>> 5 run summon minecraft:ravager ~ ~ ~ {
	<<defaultData>>,
	Passengers:[{
		id:"minecraft:evoker",
		<<defaultData>>,
		<<looter>>,
		<<raidLeader>>,
		<<armorItems>>:[
			{},
			{},
			{},
			{<<leaderBanner>>}
		]
	}]
}

\file templates/rng_teardown.txt
