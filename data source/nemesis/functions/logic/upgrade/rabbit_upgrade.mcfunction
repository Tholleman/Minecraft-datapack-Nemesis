\file rabbit.txt

\var amount 4
\file templates/rng.txt

\var rabbitData {
	RabbitType:99,
	<<persistent>>,
	<<looter>>,
	<<attributes>>:[<<maxFollowRange>>]
}

# Summon one of the rabbits
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"1 additional rabbit","color":"green"}
/execute if <<step>> 0..3 run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"2 additional rabbits","color":"green"}
/execute if <<step>> 1..3 run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"3 additional rabbits","color":"green"}
/execute if <<step>> 2..3 run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"4 additional rabbits","color":"green"}
/execute if <<step>> 3 run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>

\file templates/rng_teardown.txt
