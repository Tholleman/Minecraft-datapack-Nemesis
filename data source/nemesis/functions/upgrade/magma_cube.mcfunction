\var name Magma Cube
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_magma_cube
\var mobId magma_cube
\var amount 3

\file setup.mctemplate

# Summon one of the Magma Cubes
# Reverse pyramid
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Reverse pyramid","color":"green"}
/execute if <<step>> 0 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
	<<defaultData>>,
	Size:0,
	Passengers:[{
		id:"minecraft:magma_cube",
		<<defaultData>>,
		Size:1,
		Passengers:[{
			id:"minecraft:magma_cube",
			<<defaultData>>,
			Size:2,
			Passengers:[{
				id:"minecraft:magma_cube",
				<<defaultData>>,
				Size:3
			}]
		}]
	}]
}

# Bad potion effects on death
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"lingering potions","color":"green"}
\var start execute if <<step>> 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
	<<defaultData>>,
	Size:2,
	Passengers:[{
		id:"minecraft:potion",
		Potion:{
			id:"minecraft:lingering_potion",
			Count:1,
			tag:{CustomPotionEffects:[
\var end 
			]}
		}
	}],
}
# Slowness
/<<start>>{Id:2, Amplifier:4,Duration:80}<<end>>
# Instant Damage
/<<start>>{Id:7, Amplifier:4,Duration:80}<<end>>
# Weakness
/<<start>>{Id:18,Amplifier:4,Duration:80}<<end>>
# Wither
/<<start>>{Id:20,Amplifier:4,Duration:80}<<end>>
# Levitation
/<<start>>{Id:25,Amplifier:4,Duration:80}<<end>>

# Selfish looters
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"looters","color":"green"}
\var looter <<sticky>>,<<defaultData>>
\repeat 1
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:3,<<looter>>}
\repeat 2
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,<<looter>>}
\repeat 4
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,<<looter>>}
\repeat 8
/execute if <<step>> 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,<<looter>>}

\file teardown.mctemplate
