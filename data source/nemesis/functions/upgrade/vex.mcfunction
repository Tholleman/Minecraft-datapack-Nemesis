\var name vex
\file global.mctemplate
\var message The Vex has increased the raid
\var mobId vex

# tag
/execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=vex] add nemesis

\var fireworks {
		id:"minecraft:firework_rocket",
		Count:4b,
		tag:{Fireworks:{
			Flight:1b,
			Explosions:[{
				Type:1,
				Flicker:1b,
				Colors:[I;16633688,15891724,8390921,15761171]
			}]
		}}
	}

# summon
/execute at @e[tag=nemesis] run summon minecraft:pillager ~ ~ ~ {
	PersistenceRequired:1b,
	<<defaultData>>,
	PatrolLeader:1b,

	HandItems:[{id:"minecraft:crossbow",Count:1},<<fireworks>>],
	<<noHandDrop>>,

	ArmorItems:[
		{},
		{},
		{},
		{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}
	],
	<<noArmorDrop>>
}

\file teardown no rng.mctemplate
