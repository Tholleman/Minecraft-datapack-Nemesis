${var name Phantom}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_phantom}
${var mobId phantom}
${var amount 12}
${var message The Phantom has become a worse nightmare}

${file setup.mctemplate}

# Summon one of the phantoms
execute if score rng nem_num matches 0..5 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Greater Phantom\"",
	Size:3,
	Silent:1,
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
};

execute if score rng nem_num matches 6..8 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Nightmare Phantom\"",
	Size:10,
	Silent:1,
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
};

${repeat 5}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Invisible Phantom\"",
	<<defaultData>>,
	Silent:1,
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]
};

execute if score rng nem_num matches 10 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Phantom King\"",
	<<persistent>>,
	Silent:1,
	Size:20,
	Health:40,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:60},
		{Name:"generic.attackDamage",Base:8}
	<<attributeEnd>>
};

${repeat 2}
execute if score rng nem_num matches 11 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {
	CustomName:"\"a different kind of Phantom\"",
	<<defaultData>>,
	CanPickUpLoot:1b,
	HandItems:[{id:"minecraft:iron_sword",Count:1},{}],
	<<noHandDrop>>
};

${file teardown.mctemplate}
