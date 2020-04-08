\file evoker.txt

\var amount 3
\file templates/rng.txt

# Summon one of the pillagers
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"3 pillagers","color":"green"}
\repeat 3
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<handItems>>:[{id:"minecraft:crossbow",Count:1},<<pillagerFireworks>>],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"2 enchanted pillagers","color":"green"}
\repeat 2
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>,
	<<handItems>>:[
		{
			id:"minecraft:crossbow",
			tag:{Enchantments:[
				{id:quick_charge,lvl:3},
				{id:piercing,lvl:4}
			]},
			Count:1
		},
		<<pillagerFireworks>>
	],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"raid leader pillager","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	<<persistent>>,
	<<looter>>,

	<<health>>:40,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMaxHealth>>:40},
		{<<setKnockbackResistance>>:0.33f}
	],
	
	<<handItems>>:[
		{
			id:"minecraft:crossbow",
			tag:{Enchantments:[
				{id:multishot,lvl:1},
				{id:quick_charge,lvl:3}
			]},
			Count:1
		},
		<<pillagerFireworks>>
	],
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
