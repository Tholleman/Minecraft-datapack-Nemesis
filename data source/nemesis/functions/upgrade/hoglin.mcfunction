${var name Hoglin}
${file global.mctemplate}
${var mobId hoglin}
${var message The Hoglin feast}
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=<<mobId>>] add nemesis;

${repeat 8}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900};

execute if entity @e[tag=nemesis] run tellraw @s {"text":"<<message>>","italic":true,"color":"dark_red"};
advancement revoke @s only nemesis:<<mobId>>;
tag @e[tag=nemesis] remove nemesis;
