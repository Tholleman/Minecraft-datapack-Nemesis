\file enderman.txt

\clevel 2
/execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"8 Endermites","color":"green"}
\repeat 8
/execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>
}

