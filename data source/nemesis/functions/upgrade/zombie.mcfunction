\var name Zombie
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_zombie
\var mobId zombie
\var amount 5

\file setup.mctemplate

\var zombieAttributeStart <<attributeStart>>,{Name:"zombie.spawnReinforcements",Base:1f}
\var zombieAttributeEnd <<attributeEnd>>
\var zombieAttributes <<zombieAttributeStart>><<zombieAttributeEnd>>
\var zombieData <<persistent>>,<<sticky>>,CanBreakDoors:1b,<<noHandDrop>>,<<noArmorDrop>>

# Summon one of the Zombies
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"patient 0","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {
	CustomName:"\"Patient 0\"",
	<<zombieData>>,
	Health:40,
	<<zombieAttributeStart>>,
		{Name:"generic.maxHealth",Base:40},
		{Name:"generic.attackDamage",Base:4},
	<<zombieAttributeEnd>>
}
/execute if <<step>> 0 run tp @e[type=item,distance=..5] ~ ~ ~
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"scavenger zombie","color":"green"}
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {
	CustomName:"\"Scavenger\"",
	<<zombieData>>,
	<<zombieAttributes>>,
	HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
	ArmorItems:[
		{id:"minecraft:leather_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:leather_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	]
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"golden zombie","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {
	CustomName:"\"Flaunter\"",
	<<zombieData>>,
	<<zombieAttributes>>,
	HandItems:[{id:"minecraft:golden_sword",Count:1},{}],
	ArmorItems:[
		{id:"minecraft:golden_boots",Count:1},
		{id:"minecraft:golden_leggings",Count:1},
		{id:"minecraft:golden_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	]
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"child zombie","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {
	CustomName:"\"Pest\"",
	<<zombieData>>,
	<<zombieAttributes>>,
	IsBaby:1,
	HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
	ArmorItems:[
		{id:"minecraft:chainmail_boots",Count:1},
		{id:"minecraft:chainmail_leggings",Count:1},
		{id:"minecraft:chainmail_chestplate",Count:1},
		{id:"minecraft:chainmail_helmet",Count:1}
	]
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"tank zombie","color":"green"}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:zombie ~ ~ ~ {
	CustomName:"\"Tank\"",
	<<zombieData>>,
	Health:80,
	<<zombieAttributeStart>>,
		{Name:"generic.maxHealth",Base:80},
		{Name:"generic.knockbackResistance",Base:0.8f},
		{Name:"generic.movementSpeed",Base:0.2f},
		{Name:"generic.attackDamage",Base:6},
	<<zombieAttributeEnd>>,
	HandItems:[
		{id:"minecraft:stone_sword",Count:1},
		{id:"minecraft:shield",Count:1}
	],
	ArmorItems:[
		{id:"minecraft:iron_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:iron_chestplate",Count:1},
		{id:"minecraft:iron_helmet",Count:1}
	]
}

\file teardown.mctemplate
