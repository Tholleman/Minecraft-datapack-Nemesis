\file shulker.txt

\var amount 3
\file templates/rng.txt

\var everyShulker @e[type=minecraft:shulker,distance=..64]

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"endermites","color":"green"}
/execute 
	if <<step>> 0 
	at <<everyShulker>> 
	run summon minecraft:endermite ~ ~ ~ {
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>]
	}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"phantom","color":"green"}
/execute 
	if <<step>> 1 
	at <<everyShulker>> 
	run summon minecraft:phantom ~ ~ ~ {
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>]
	}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"vex","color":"green"}
/execute 
	if <<step>> 2 
	at <<everyShulker>> 
	run summon minecraft:vex ~ ~ ~ {
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],
		<<noHandDrop>>
	}

\file templates/rng_teardown.txt
