\file husk.txt

\var amount 5
\file templates/rng.txt

\var start 
	run summon minecraft:husk ~ ~ ~ {
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		<<passengers>>:[{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:splash_potion",
				tag:{
					CustomPotionEffects:[
\var end 
					]
				},
				Count:1
			}
		}]
	}

#TODO: check if the splash potions still work

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"resistance husk","color":"green"}
\repeat 4
/execute if <<step>> 0 <<start>>{<<resistanceId>>,Amplifier:1,Duration:1200}<<end>>

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"speed husk","color":"green"}
\repeat 4
/execute if <<step>> 1 <<start>>{<<speedId>>,Amplifier:1,Duration:1200}<<end>>

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"strength husk","color":"green"}
\repeat 4
/execute if <<step>> 2 <<start>>{<<strengthId>>,Amplifier:1,Duration:1200}<<end>>

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"damage husk","color":"green"}
\repeat 4
/execute if <<step>> 3 <<start>>{<<damageId>>,Amplifier:4,Duration:1}<<end>>

# Mix
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Mixed husks","color":"green"}
/execute if <<step>> 4 <<start>>{<<resistanceId>>,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{<<speedId>>,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{<<strengthId>>,Amplifier:1,Duration:1200}<<end>>
/execute if <<step>> 4 <<start>>{<<damageId>>,Amplifier:4,Duration:1}<<end>>

\file templates/rng_teardown.txt