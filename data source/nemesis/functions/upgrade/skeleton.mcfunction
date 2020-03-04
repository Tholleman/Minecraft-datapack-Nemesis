${var name Skeleton}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_skeleton}
${var mobId skeleton}
${var amount 4}
${var message The Skeleton thinks it has found its long lost identity}

${file setup.mctemplate}

# If the skeleton believes it's that mob, it should upgrade like one
execute if entity @e[tag=nem_skeleton_zombie,tag=nemesis] run function nemesis:upgrade/zombie;
execute if entity @e[tag=nem_skeleton_blaze,tag=nemesis] run function nemesis:upgrade/blaze;
execute if entity @e[tag=nem_skeleton_wither_skeleton,tag=nemesis] run function nemesis:upgrade/wither_skeleton;

# Summon one of the nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {
	CustomName:"\"Zombie\"",
	Tags:["nem_skeleton_zombie"],
	<<defaultData>>,
	CanPickUpLoot:1b,
	ArmorItems:[
		{id:"minecraft:leather_boots",tag:{display:{color:7105634}},Count:1},
		{id:"minecraft:leather_leggings",tag:{display:{color:4602788}},Count:1},
		{id:"minecraft:leather_chestplate",tag:{display:{color:175790}},Count:1},
		{id:"minecraft:zombie_head",Count:1}
	],
	<<noArmorDrop>>
};
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:stray ~ ~ ~ {
	CustomName:"\"Stray\"",
	Tags:["nem_skeleton_stray"],
	<<defaultData>>,
	HandItems:[{id:"minecraft:bow",Count:1},{}],
	<<noHandDrop>>
};
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {
	CustomName:"\"Blaze\"",
	Tags:["nem_skeleton_blaze"],
	<<defaultData>>,

	HandItems:[{id:"minecraft:bow",tag:{Enchantments:[{id:flame,lvl:1}]},Count:1},{}],
	<<noHandDrop>>,

	Fire:1277951,
	ActiveEffects:[
		# Fire Resistance
		{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b},

		# Invisibility
		{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}
	]
};
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:skeleton ~ ~ ~ {
	CustomName:"\"Wither Skeleton\"",
	Tags:["nem_skeleton_wither_skeleton"],
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.attackDamage",Base:12}
	<<attributeEnd>>,

	HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1}],
	<<noArmorDrop>>
};

${file teardown.mctemplate}
