\var name Enderman
\file global.mctemplate
\var mobId enderman
\var warnDefault <<warnNoTag>>
\var message The Enderman broke you down into Endermites

\repeat 8
/execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {
	<<defaultData>>,
	<<sticky>>
}

\file teardown no rng.mctemplate
