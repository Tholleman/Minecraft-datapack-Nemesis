\file zombie.txt

\var amount 7
\file templates/rng.txt

\var zombieVillagerData 
	<<persistent>>,
	<<looter>>,
	<<attributes>>:[<<maxFollowRange>>,<<maxZombieReinforcements>>],
	<<canBreakDoors>>

# Summon one of the zombie villagers
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"nitwit","color":"green"}
\var nitwit minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Nitwit\"",
	VillagerData:{profession:"minecraft:nitwit"},
	<<zombieVillagerData>>
}
\repeat 5
/execute if <<step>> 0 run summon <<nitwit>>

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"farmer","color":"green"}
\var farmer minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Farmer\"",
	VillagerData:{profession:"minecraft:farmer"},
	<<zombieVillagerData>>,
	<<handItems>>:[
		{
			id:"minecraft:iron_hoe",
			tag:{Enchantments:[{id:knockback,lvl:2}]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}
\repeat 3
/execute if <<step>> 1 run summon <<farmer>>

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"librarian","color":"green"}
\var librarianStart minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Librarian\"",
	VillagerData:{profession:"minecraft:librarian"},
	<<persistent>>,
	<<looter>>,
	<<health>>:30,
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>,
		{<<setMaxHealth>>:30}
	],
	<<canBreakDoors>>,
	<<handItems>>:[
		{
			id:"minecraft:writable_book",
			tag:{Enchantments:[
\var librarianEnd 
			]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}
/execute if <<step>> 2 run summon <<librarianStart>>{id:knockback,lvl:2}<<librarianEnd>>
/execute if <<step>> 2 run summon <<librarianStart>>{id:fire_aspect,lvl:2}<<librarianEnd>>
/execute if <<step>> 2 run summon <<librarianStart>>{id:sharpness,lvl:5}<<librarianEnd>>

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"butcher","color":"green"}
\var butcher minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Butcher\"",
	VillagerData:{profession:"minecraft:butcher"},
	<<persistent>>,
	<<looter>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>,
		{<<setMovementSpeed>>:0.4f}
	],
	<<canBreakDoors>>,
	<<handItems>>:[{id:"minecraft:iron_axe",Count:1},{}],
	<<noHandDrop>>,
	<<armorItems>>:[
		{id:"minecraft:leather_boots",Count:1},
		{id:"minecraft:leather_leggings",Count:1},
		{id:"minecraft:leather_chestplate",Count:1},
		{}
	],
	<<noArmorDrop>>
}
\repeat 3
/execute if <<step>> 3 run summon <<butcher>>
/execute if <<step>> 3 run kill @e[type=chicken,distance=..5]
/execute if <<step>> 3 run kill @e[type=cow,distance=..5]
/execute if <<step>> 3 run kill @e[type=mooshroom,distance=..5]
/execute if <<step>> 3 run kill @e[type=pig,distance=..5]
/execute if <<step>> 3 run kill @e[type=sheep,distance=..5]

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"priest","color":"green"}
\var priestStart minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Priest\"",
	VillagerData:{profession:"minecraft:priest"},
	<<zombieVillagerData>>,
	<<handItems>>:[
		{
			id:"
\var priestEnd 
			",Count:1
		},
		{}
	],
	<<noHandDrop>>,
	<<passengers>>:[{
		id:"minecraft:potion",
		Potion:{
			id:"minecraft:lingering_potion",
			Count:1,
			tag:{CustomPotionEffects:[{<<damageId>>,Amplifier:2,Duration:1200}]}
		}
	}]
}
\var priestJack <<priestStart>>minecraft:jack_o_lantern<<priestEnd>>
\var priestIron <<priestStart>>minecraft:iron_block<<priestEnd>>
/execute if <<step>> 4 run summon <<priestJack>>
\repeat 4
/execute if <<step>> 4 run summon <<priestIron>>

\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"blacksmith","color":"green"}
\var blacksmith minecraft:zombie_villager ~ ~ ~ {
	<<customName>>:"\"Blacksmith\"",
	VillagerData:{profession:"minecraft:armorer"},
	<<zombieVillagerData>>,
	<<handItems>>:[
		{
			id:"minecraft:iron_sword",
			Count:1,
			tag:{Enchantments:[
				{id:sharpness,lvl:5},
				{id:knockback,lvl:2},
				{id:fire_aspect,lvl:2},
				{id:looting,lvl:3},
				{id:sweeping,lvl:3},
				{id:mending,lvl:1}
			]}
		},
		{
			id:"minecraft:shield",
			tag:{Enchantments:[
				{id:unbreaking,lvl:3},
				{id:mending,lvl:1}
			]},
			Count:1
		}
	],
	<<noHandDrop>>,
	<<armorItems>>:[
		{
			id:"minecraft:iron_boots",
			tag:{Enchantments:[
				{id:fire_protection,lvl:4},
				{id:feather_falling,lvl:4},
				{id:thorns,lvl:3},
				{id:frost_walker,lvl:2},
				{id:unbreaking,lvl:3},
				{id:mending,lvl:1}
			]},
			Count:1
		},
		{
			id:"minecraft:iron_leggings",
			tag:{Enchantments:[
				{id:projectile_protection,lvl:4},
				{id:thorns,lvl:3},
				{id:unbreaking,lvl:3},
				{id:mending,lvl:1}
			]},
			Count:1
		},
		{
			id:"minecraft:iron_chestplate",
			tag:{Enchantments:[
				{id:protection,lvl:4},
				{id:thorns,lvl:3},
				{id:unbreaking,lvl:3},
				{id:mending,lvl:1}
			]},
			Count:1
		},
		{
			id:"minecraft:iron_helmet",
			Count:1,
			tag:{Enchantments:[
				{id:blast_protection,lvl:4},
				{id:respiration,lvl:3},
				{id:aqua_affinity,lvl:1},
				{id:thorns,lvl:3},
				{id:unbreaking,lvl:3},
				{id:mending,lvl:1}
			]}
		}
	],
	<<noArmorDrop>>
}
/execute if <<step>> 5 run summon <<blacksmith>>

# Dear god, it's the entire village
\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"all of the villagers","color":"green"}
\repeat 3
/execute if <<step>> 6 run summon <<nitwit>>
\repeat 3
/execute if <<step>> 6 run summon <<farmer>>
\repeat 2
/execute if <<step>> 6 run summon <<librarianStart>>{id:sharpness,lvl:5},{id:fire_aspect,lvl:2},{id:knockback,lvl:2}<<librarianEnd>>
\repeat 2
/execute if <<step>> 6 run summon <<butcher>>
/execute if <<step>> 6 run summon <<priestJack>>
/execute if <<step>> 6 run summon <<priestIron>>
/execute if <<step>> 6 run summon <<blacksmith>>

\file templates/rng_teardown.txt
