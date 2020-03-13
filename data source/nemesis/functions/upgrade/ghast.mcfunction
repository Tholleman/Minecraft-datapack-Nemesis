\var name Ghast
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_ghast
\var mobId ghast
\var amount 4

\file setup.mctemplate

# Summon one of the Ghasts
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"immortal","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {
	CustomName:"\"the immortal\"",
	<<persistent>>,
	Silent:1,
	Health:300,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:300},
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"abundant","color":"green"}
\repeat 5
/execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {
	CustomName:"\"the abundant\"",
	<<defaultData>>
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"undetectable","color":"green"}
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {
	CustomName:"\"the undetectable\"",
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]
}

\var wither_skeleton 
	id:"minecraft:wither_skeleton",
	<<persistent>>,
	<<sticky>>,

	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>,

	HandItems:[{id:"minecraft:stone_sword",Count:1},{}],
	<<noHandDrop>>,
	<<noArmorDrop>>,

	# Slow Falling
	ActiveEffects:[{Id:28,Amplifier:0,Duration:2147483647}]
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"gate","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:ghast ~ ~ ~ {
	CustomName:"\"the gate\"",
	<<defaultData>>,
	Passengers:[
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>},
		{<<wither_skeleton>>}
	]
}

\file teardown.mctemplate
