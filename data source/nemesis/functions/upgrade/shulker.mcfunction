\var name Shulker
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_shulker
\var mobId shulker
\var amount 4
\var message The Shulker gains help

\file setup.mctemplate

# Summon one of the help
\repeat 3
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	<<persistent>>,
	<<sticky>>,
	<<attributeStart>>,
		{Name:generic.maxHealth,Base:20}
	<<attributeEnd>>
}

\repeat 3
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<defaultData>>
}

\repeat 3
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {
	<<defaultData>>,
	HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],
	<<noHandDrop>>
}

\file teardown no kill.mctemplate
