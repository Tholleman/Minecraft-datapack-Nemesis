\var name Pillager
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_pillager
\var mobId pillager
\var amount 5

\file raid setup.mctemplate

\var defaultVindicatorData <<defaultData>>,<<sticky>>

# Summon one of the vindicators
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"wood axe","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {
	<<defaultVindicatorData>>,

	HandItems:[{id:"minecraft:wooden_axe",Count:1},{}],
	<<noHandDrop>>,

	ActiveEffects:[
		# Speed
		{Id:1,Amplifier:0,Duration:2147483647},

		# Jump Boost
		{Id:8,Amplifier:1,Duration:2147483647}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"stone axe","color":"green"}
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {
	<<sticky>>,
	<<persistent>>,

	<<attributeStart>>,
		{Name:"generic.movementSpeed",Base:0.4f}
	<<attributeEnd>>,

	HandItems:[
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
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {
	<<sticky>>,
	<<persistent>>,

	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:0.2f}
	<<attributeEnd>>,

	HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
	<<noHandDrop>>
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"golden axe","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {
	<<defaultVindicatorData>>,
	Silent:1,
	HandItems:[
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
/execute if <<step>> 4 at @e[tag=nemesis] run summon minecraft:vindicator ~ ~ ~ {
	<<persistent>>,
	<<sticky>>,

	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:0.4f}
	<<attributeEnd>>,

	HandItems:[{id:"minecraft:diamond_axe",Count:1},{}],
	<<noHandDrop>>,

	PatrolLeader:1b,
	ArmorItems:[
		{},
		{},
		{},
		{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}
	],
	<<noArmorDrop>>
}

\file teardown no kill.mctemplate
