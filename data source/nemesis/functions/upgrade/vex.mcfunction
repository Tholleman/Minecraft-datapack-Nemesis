${var name vex}
${file global.mctemplate}

# tag
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=vex] add nemesis;

# summon
execute at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	PersistenceRequired:1b,
	<<defaultData>>,
	PatrolLeader:1b,

	HandItems:[{id:"minecraft:crossbow",Count:1},{}],
	<<noHandDrop>>,

	ArmorItems:[
		{},
		{},
		{},
		{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}
	],
	<<noArmorDrop>>
};
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Vex has increased the raid","italic":true,"color":"dark_red"};

# clean
advancement revoke @s only nemesis:vex;
tag @e[tag=nemesis] remove nemesis;
