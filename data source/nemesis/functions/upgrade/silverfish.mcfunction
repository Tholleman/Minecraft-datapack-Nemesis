${var name Silverfish}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_silverfish}
${var mobId silverfish}
${var amount 4}

${file setup.mctemplate}

# Summon one of the Silverfish
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {
	CustomName:"\"Zipper\"",
	<<persistent>>,

	Health:40,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:40},
		{Name:"generic.movementSpeed",Base:0.4f}
	<<attributeEnd>>
};

execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {
	CustomName:"\"Burrower\"",
	<<persistent>>,

	Health:40,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:40},
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
};

${repeat 6}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:silverfish ~ ~ ~ {
	CustomName:"\"an infestation of Silverfish\"",
	<<persistent>>,

	Health:40,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:40}
	<<attributeEnd>>
};

execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:infested_stone_bricks replace minecraft:stone_bricks;
execute if score rng nem_num matches 3 at @e[tag=nemesis] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:infested_stone replace minecraft:stone;

${file teardown.mctemplate}
