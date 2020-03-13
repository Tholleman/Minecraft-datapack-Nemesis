\var name Shulker
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_shulker
\var mobId shulker
\var amount 3
\var message The Shulker gains help

\file setup.mctemplate

\var step score rng nem_num matches
\var summon run execute at @e[type=minecraft:shulker,distance=..64] run summon
\var at ~ ~ ~

# Summon one of the help
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"endermites","color":"green"}
/execute if <<step>> 0 <<summon>> minecraft:endermite ~ ~ ~

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"phantom","color":"green"}
/execute if <<step>> 1 <<summon>> minecraft:phantom ~ ~ ~

\var vexData {
	<<defaultData>>,
	HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],
	<<noHandDrop>>
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"vex","color":"green"}
/execute if <<step>> 2 <<summon>> minecraft:vex ~ ~ ~ <<vexData>>

\file teardown no kill.mctemplate
