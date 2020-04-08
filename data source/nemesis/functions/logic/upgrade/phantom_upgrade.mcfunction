\file phantom.txt

\var amount 12
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0..5 run tellraw @s {"text":"Size 3","color":"green"}
/execute if <<step>> 0..5 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<customName>>:"\"Greater Phantom\"",
	<<size>>:3,
	<<silent>>,
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:1f}
	]
}

\clevel 2
/execute if <<step>> 6..8 run tellraw @s {"text":"Size 10","color":"green"}
/execute if <<step>> 6..8 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<customName>>:"\"Nightmare Phantom\"",
	<<size>>:10,
	<<silent>>,
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:1f}
	]
}

\clevel 2
/execute if <<step>> 9 run tellraw @s {"text":"5 Invisible","color":"green"}
\repeat 5
/execute if <<step>> 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<customName>>:"\"Invisible Phantom\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<silent>>,
	<<effects>>:[<<invisibility>>]
}

\clevel 2
/execute if <<step>> 10 run tellraw @s {"text":"Size 20","color":"green"}
/execute if <<step>> 10 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<customName>>:"\"Phantom King\"",
	<<persistent>>,
	<<silent>>,
	<<size>>:20,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setKnockbackResistance>>:1f},
		{<<setAttackDamage>>:8}
	]
}

\clevel 2
/execute if <<step>> 11 run tellraw @s {"text":"vex","color":"green"}
\repeat 2
/execute if <<step>> 11 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {
	<<customName>>:"\"a different kind of Phantom\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>,
	<<handItems>>:[{id:"minecraft:iron_sword",Count:1},{}],
	<<noHandDrop>>
}

\file templates/rng_teardown.txt