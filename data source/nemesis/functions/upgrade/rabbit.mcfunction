\var name Rabbit
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_rabbit
\var mobId rabbit
\var amount 4
\var message The Bunny has multiplied

\file setup.mctemplate

\var rabbitData {RabbitType:99,<<persistent>>,<<sticky>>}

# Summon one of the rabbits
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"1 additional rabbit","color":"green"}
/execute if <<step>> 0..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"2 additional rabbits","color":"green"}
/execute if <<step>> 1..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"3 additional rabbits","color":"green"}
/execute if <<step>> 2..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"4 additional rabbits","color":"green"}
/execute if <<step>> 3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>

\file teardown no kill.mctemplate
