\file illusioner.txt

\var amount 5
\file templates/rng.txt

\var start 
	at @e[tag=nemesis] run summon minecraft:evoker ~ ~ ~ {
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		ActiveEffects:[{
\var end 
		,<<maxDuration>>}]
	}

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"fire resistance evoker","color":"green"}
/execute if <<step>> 0 <<start>><<fireResistanceId>>,Amplifier:0<<end>>

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"absorption evoker","color":"green"}
/execute if <<step>> 1 <<start>><<healthBoostId>>,Amplifier:4<<end>>

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"regeneration evoker","color":"green"}
/execute if <<step>> 2 <<start>><<regenerationId>>,Amplifier:0<<end>>

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"speed evoker","color":"green"}
/execute if <<step>> 3 <<start>><<speedId>>,Amplifier:1<<end>>

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"invisibility evoker","color":"green"}
/execute if <<step>> 4 <<start>><<invisibilityId>>,Amplifier:0<<end>>

\file templates/rng_teardown.txt