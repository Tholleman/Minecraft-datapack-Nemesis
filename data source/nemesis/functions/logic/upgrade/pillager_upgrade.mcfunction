\file pillager.txt

\var amount 5
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"wood axe","color":"green"}
/execute if <<step>> 0 run summon minecraft:vindicator ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>,
	
	<<handItems>>:[{id:"minecraft:wooden_axe",Count:1},{}],
	<<noHandDrop>>,
	
	<<effects>>:[
		{<<speedId>>,Amplifier:0,<<maxDuration>>},
		{<<jumpBoostId>>,Amplifier:1,<<maxDuration>>}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"stone axe","color":"green"}
/execute if <<step>> 1 run summon minecraft:vindicator ~ ~ ~ {
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.4f}
	],
	
	<<handItems>>:[
		{
			id:"minecraft:stone_axe",
			tag:{Enchantments:[{id:knockback,lvl:10}]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"iron axe","color":"green"}
/execute if <<step>> 2 run summon minecraft:vindicator ~ ~ ~ {
	<<looter>>,
	<<persistent>>,
	
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:0.2f}
	],
	
	<<handItems>>:[{id:"minecraft:iron_axe",Count:1},{}],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"golden axe","color":"green"}
/execute if <<step>> 3 run summon minecraft:vindicator ~ ~ ~ {
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<silent>>,
	<<handItems>>:[
		{
			id:"minecraft:golden_axe",
			tag:{Enchantments:[{id:fire_aspect,lvl:2}]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"diamond axe","color":"green"}
/execute if <<step>> 4 run summon minecraft:vindicator ~ ~ ~ {
	<<persistent>>,
	<<looter>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:0.4f}
	],
	
	<<handItems>>:[{id:"minecraft:diamond_axe",Count:1},{}],
	<<noHandDrop>>,

	<<raidLeader>>,
	<<armorItems>>:[
		{},
		{},
		{},
		{<<leaderBanner>>}
	],
	<<noArmorDrop>>
}

\file templates/rng_teardown.txt