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
/execute if score rng nem_num matches 0..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
/execute if score rng nem_num matches 1..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
/execute if score rng nem_num matches 2..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ <<rabbitData>>

\file teardown no kill.mctemplate
