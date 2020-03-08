\var name Magma Cube
\file global.mctemplate
#                    123456789 123456
\var scoreboardName nem_magma_cube
\var mobId magma_cube
\var amount 3

\file setup.mctemplate

# Summon one of the Magma Cubes
# Reverse pyramid
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
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
\var start execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {
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
\var looter <<sticky>>,<<defaultData>>
\repeat 1
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:3,<<looter>>}
\repeat 2
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:2,<<looter>>}
\repeat 4
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:1,<<looter>>}
\repeat 8
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:magma_cube ~ ~ ~ {Size:0,<<looter>>}

\file teardown.mctemplate
