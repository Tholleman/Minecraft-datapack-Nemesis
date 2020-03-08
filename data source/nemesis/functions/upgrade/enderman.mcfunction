\var name Enderman
\file global.mctemplate

\repeat 8
/execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {
	<<defaultData>>,
	CanPickUpLoot:1b
}

/execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Enderman broke you down into Endermites","italic":true,"color":"dark_red"}

# Reset for another summoning
/advancement revoke @s only nemesis:enderman

# Clean up
/execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_enderman
