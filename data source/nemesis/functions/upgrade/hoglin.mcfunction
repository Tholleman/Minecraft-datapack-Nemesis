\var name Hoglin
\file global.mctemplate
\var mobId hoglin
\var warnDefault <<warnNoTag>>
\var message The Hoglin feast

/execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=<<mobId>>] add nemesis

\clevel 2
/execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"8 fast growing hoglins","color":"green"}
\repeat 8
/execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}

\file teardown no rng.mctemplate
