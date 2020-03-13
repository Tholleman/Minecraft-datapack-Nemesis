\var name Endermite
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_endermite
\var mobId endermite
\var amount 6
\var message The Endermite has warped around to collect other mobs

\file setup.mctemplate

\var endermiteData 
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]

# Summon one of the endermites
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Tundra","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Tundra\"",
	<<endermiteData>>,
	Passengers:[{
		id:"minecraft:stray",
		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<defaultData>>
	}]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Dessert","color":"green"}
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Dessert\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:husk",<<defaultData>>}]
}
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Dessert\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:rabbit",RabbitType:99,<<defaultData>>}]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Plains","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:creeper",<<defaultData>>}]
}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{
		id:"minecraft:skeleton",
		HandItems:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,
		<<defaultData>>
	}]
}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:spider",<<defaultData>>}]
}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:witch",<<defaultData>>}]
}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:zombie",<<defaultData>>}]
}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Plains\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:zombie_villager",<<defaultData>>}]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Underground","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Underground\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:cave_spider",<<defaultData>>}]
}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Underground\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:silverfish",<<defaultData>>}]
}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Underground\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:slime",Size:3,<<defaultData>>}]
}

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Nether","color":"green"}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Nether\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:blaze",<<defaultData>>}]
}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Nether\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:magma_cube",Size:3,<<defaultData>>}]
}
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Nether\"",
	<<endermiteData>>,
	Passengers:[{
		id:"minecraft:wither_skeleton",
		<<defaultData>>,

		HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
		<<noHandDrop>>
	}]
}

\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"Raid","color":"green"}
/execute if <<step>> 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Raid\"",
	<<endermiteData>>,
	Passengers:[{
		id:"minecraft:pillager",
		<<defaultData>>,

		HandItems:[{id:"minecraft:crossbow",Count:1},{}],
		<<noHandDrop>>
	}]
}
/execute if <<step>> 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Raid\"",
	<<endermiteData>>,
	Passengers:[{
		id:"minecraft:vindicator",
		<<defaultData>>,

		HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>
	}]
}
/execute if <<step>> 5 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	CustomName:"\"Raid\"",
	<<endermiteData>>,
	Passengers:[{id:"minecraft:evoker",<<defaultData>>}]
}

\file teardown.mctemplate
