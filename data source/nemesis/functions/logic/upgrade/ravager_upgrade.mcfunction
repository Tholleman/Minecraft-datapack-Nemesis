\file ravager.txt

\var amount 7
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0..1 run tellraw @s {"text":"1 evoker","color":"green"}
/execute if <<step>> 0..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}

\clevel 2
/execute if <<step>> 2..3 run tellraw @s {"text":"2 evokers","color":"green"}
/execute if <<step>> 2..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}

\clevel 2
/execute if <<step>> 4..5 run tellraw @s {"text":"3 evokers","color":"green"}
/execute if <<step>> 4..6 at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]
}

\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"3 evokers and an illusioner","color":"green"}
/execute if <<step>> 6 at @e[tag=nemesis] run summon minecraft:illusioner ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<handItems>>:[{id:"minecraft:bow",Count:1},{}]
}

\file templates/rng_teardown.txt
