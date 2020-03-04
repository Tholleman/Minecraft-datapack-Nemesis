${var name Shulker}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_shulker}
${var mobId shulker}
${var amount 4}
${var message The Shulker gains help}

${file setup.mctemplate}

# Summon one of the help
${repeat 3}
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:endermite ~ ~ ~ {
	<<persistent>>,
	CanPickUpLoot:1b,
	<<attributeStart>>,
		{Name:generic.maxHealth,Base:20}
	<<attributeEnd>>
};

${repeat 3}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	<<defaultData>>
};

${repeat 3}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {
	<<defaultData>>,
	HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],
	<<noHandDrop>>
};

execute if entity @e[tag=nemesis] run tellraw @s {"text":"<<message>>","italic":true,"color":"dark_red"};

# Reset for another summoning
advancement revoke @s only nemesis:<<mobId>>;
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={<<scoreboardName>>=..<<<<amount>> - 1>>}] <<scoreboardName>> 1;

tag @e[tag=nemesis] remove nemesis;

# Clean up
scoreboard players reset rng;
scoreboard players reset amount;
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove <<scoreboardName>>;
