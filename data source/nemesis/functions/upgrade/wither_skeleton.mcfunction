\var name Wither Skeleton
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_wither_skele
\var mobId wither_skeleton
\var amount 5

\file setup.mctemplate

# Summon one of the wither skeletons
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	CustomName:"\"Stationed Guard\"",
	<<persistent>>,
	<<sticky>>,
	HandItems:[
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
	Attributes:[
		{Name:"generic.followRange",Base:5},
		{Name:"generic.knockbackResistance",Base:1f},
		{Name:"generic.movementSpeed",Base:0f},
		{Name:"generic.attackDamage",Base:20}
	]
}
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run tp @e[type=item,distance=..5] ~ ~ ~
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	CustomName:"\"Adaptus Astartes\"",
	<<defaultData>>,

	HandItems:[{id:"minecraft:iron_sword",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[
		{id:"minecraft:iron_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:iron_chestplate",Count:1},
		{id:"minecraft:iron_helmet",Count:1}
	],
	<<noArmorDrop>>
}
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	CustomName:"\"Adaptus Custodes\"",
	<<defaultData>>,

	HandItems:[{id:"minecraft:golden_sword",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[
		{id:"minecraft:golden_boots",Count:1},
		{id:"minecraft:golden_leggings",Count:1},
		{id:"minecraft:golden_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	],
	<<noArmorDrop>>
}
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	CustomName:"\"Warmaster\"",
	<<defaultData>>,

	HandItems:[{id:"minecraft:diamond_sword",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[
		{id:"minecraft:diamond_boots",Count:1},
		{id:"minecraft:diamond_leggings",Count:1},
		{id:"minecraft:diamond_chestplate",Count:1},
		{id:"minecraft:diamond_helmet",Count:1}
	],
	<<noArmorDrop>>
}
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:wither_skeleton ~ ~ ~ {
	CustomName:"\"Captain-General\"",
	<<persistent>>,
	Health:50,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:50},
		{Name:"generic.knockbackResistance",Base:0.8f}
	<<attributeEnd>>,

	HandItems:[{id:"minecraft:netherite_sword",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[
		{id:"minecraft:netherite_boots",Count:1},
		{id:"minecraft:netherite_leggings",Count:1},
		{id:"minecraft:netherite_chestplate",Count:1},
		{}
	],
	<<noArmorDrop>>
}

\file teardown.mctemplate
