\file wither_skeleton.txt

\var amount 5
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"stationed guard","color":"green"}
/execute if <<step>> 0 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<customName>>:"\"Stationed Guard\"",
	<<persistent>>,
	<<looter>>,
	<<handItems>>:[
		{
			id:"minecraft:bow",
			tag:{Enchantments:[
				{id:power,lvl:5},
				{id:punch,lvl:2},
				{id:flame,lvl:1}
			]},
			Count:1
		},
		{}
	],
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:1f},
		{<<setMovementSpeed>>:0f},
		{<<setAttackDamage>>:20}
	]
}
/execute if <<step>> 0 run tp @e[type=item,distance=..5] ~ ~ ~
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"iron gear","color":"green"}
/execute if <<step>> 1 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<customName>>:"\"Adaptus Astartes\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	
	<<handItems>>:[{id:"minecraft:iron_sword",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:iron_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:iron_chestplate",Count:1},
		{id:"minecraft:iron_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"golden gear","color":"green"}
/execute if <<step>> 2 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<customName>>:"\"Adaptus Custodes\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	
	<<handItems>>:[{id:"minecraft:golden_sword",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:golden_boots",Count:1},
		{id:"minecraft:golden_leggings",Count:1},
		{id:"minecraft:golden_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"diamond gear","color":"green"}
/execute if <<step>> 3 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<customName>>:"\"Warmaster\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	
	<<handItems>>:[{id:"minecraft:diamond_sword",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:diamond_boots",Count:1},
		{id:"minecraft:diamond_leggings",Count:1},
		{id:"minecraft:diamond_chestplate",Count:1},
		{id:"minecraft:diamond_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"netherite gear","color":"green"}
/execute if <<step>> 4 run summon minecraft:wither_skeleton ~ ~ ~ {
	<<customName>>:"\"Captain-General\"",
	<<persistent>>,
	<<health>>:50,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.35d},
		{<<setAttackDamage>>:17},
		{<<setMaxHealth>>:50},
		{<<setKnockbackResistance>>:0.8f}
	],

	<<handItems>>:[{id:"minecraft:netherite_sword",Count:1},{}],
	<<noHandDrop>>,

	<<armorItems>>:[
		{id:"minecraft:netherite_boots",Count:1},
		{id:"minecraft:netherite_leggings",Count:1},
		{id:"minecraft:netherite_chestplate",Count:1},
		{}
	],
	<<noArmorDrop>>
}

\file templates/rng_teardown.txt
