${var name Rabbit}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_rabbit}
${var mobId rabbit}
${var amount 4}
${var message The Bunny has multiplied}

${file setup.mctemplate}

# Summon one of the rabbits
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b};
execute if score rng nem_num matches 1..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b};
execute if score rng nem_num matches 2..3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b};
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:rabbit ~ ~ ~ {RabbitType:99,PersistenceRequired:1b};

execute if entity @e[tag=nemesis] run tellraw @s {"text":"<<message>>","italic":true,"color":"dark_red"};

# Reset for another summoning
advancement revoke @s only nemesis:rabbit;
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_rabbit=..3}] nem_rabbit 1;

tag @e[tag=nemesis] remove nemesis;

# Clean up
scoreboard players reset rng;
scoreboard players reset amount;
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_rabbit;
