\var name Phantom
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_phantom
\var mobId phantom
\var amount 12
\var message The Phantom has become a worse nightmare

\file setup.mctemplate

# Summon one of the phantoms
\clevel 2
/execute if <<step>> 0..5 run tellraw @s {"text":"Size 3","color":"green"}
/execute if <<step>> 0..5 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Greater Phantom\"",
	Size:3,
	Silent:1,
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
}

\clevel 2
/execute if <<step>> 6..8 run tellraw @s {"text":"Size 10","color":"green"}
/execute if <<step>> 6..8 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Nightmare Phantom\"",
	Size:10,
	Silent:1,
	<<persistent>>,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:1f}
	<<attributeEnd>>
}

\clevel 2
/execute if <<step>> 9 run tellraw @s {"text":"5 Invisible","color":"green"}
\repeat 5
/execute if <<step>> 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Invisible Phantom\"",
	<<defaultData>>,
	Silent:1,
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]
}

\var health 60
\clevel 2
/execute if <<step>> 10 run tellraw @s {"text":"Size 20","color":"green"}
/execute if <<step>> 10 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {
	CustomName:"\"Phantom King\"",
	<<persistent>>,
	Silent:1,
	Size:20,
	Health:<<health>>,
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:<<health>>},
		{Name:"generic.attackDamage",Base:8}
	<<attributeEnd>>
}

\clevel 2
/execute if <<step>> 11 run tellraw @s {"text":"vex","color":"green"}
\repeat 2
/execute if <<step>> 11 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {
	CustomName:"\"a different kind of Phantom\"",
	<<defaultData>>,
	<<sticky>>,
	HandItems:[{id:"minecraft:iron_sword",Count:1},{}],
	<<noHandDrop>>
}

\file teardown.mctemplate
