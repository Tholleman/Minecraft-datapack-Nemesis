\var name Zombie Villager
\file global.mctemplate
#                   123456789 123456
\var scoreboardName nem_zombie_villa
\var mobId zombie_villager
\var amount 7
\var message The Zombie has started a village

\file setup.mctemplate

\var zombieVillagerData <<persistent>>,<<sticky>>,Attributes:[{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f}],CanBreakDoors:1

# Summon one of the zombie villagers
\var nitwit minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},<<zombieVillagerData>>}
\repeat 5
/execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon <<nitwit>>

\var farmer 
	minecraft:zombie_villager ~ ~ ~ {
		CustomName:"\"Farmer\"",
		VillagerData:{profession:"minecraft:farmer"},
		<<zombieVillagerData>>,
		HandItems:[
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
/execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon <<farmer>>

\var librarianStart 
	minecraft:zombie_villager ~ ~ ~ {
		CustomName:"\"Librarian\"",
		VillagerData:{profession:"minecraft:librarian"},
		<<persistent>>,
		<<sticky>>,
		Health:30,
		Attributes:[{Name:"generic.maxHealth",Base:30},{Name:"generic.followRange",Base:64},{Name:"zombie.spawnReinforcements",Base:1f}],
		CanBreakDoors:1,
		<<noHandDrop>>,
		HandItems:[
		{
			id:"minecraft:writable_book",
			tag:{Enchantments:[
\var librarianEnd 
			]},
			Count:1
		},
		{}
		]
	}
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon <<librarianStart>>{id:knockback,lvl:2}<<librarianEnd>>
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon <<librarianStart>>{id:fire_aspect,lvl:2}<<librarianEnd>>
/execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon <<librarianStart>>{id:sharpness,lvl:5}<<librarianEnd>>

\var butcher 
	minecraft:zombie_villager ~ ~ ~ {
		CustomName:"\"Butcher\"",
		VillagerData:{profession:"minecraft:butcher"},
		<<persistent>>,
		<<sticky>>,
		Attributes:[{Name:"generic.followRange",Base:64},{Name:"generic.movementSpeed",Base:0.4f},{Name:"zombie.spawnReinforcements",Base:1f}],
		CanBreakDoors:1,
		HandItems:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>,
		ArmorItems:[
			{Count:1,id:"minecraft:leather_boots"},
			{id:"minecraft:leather_leggings",Count:1},
			{id:"minecraft:leather_chestplate",Count:1},
			{}
		],
		<<noArmorDrop>>
	}
\repeat 3
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon <<butcher>>
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run kill @e[type=chicken,distance=..5]
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run kill @e[type=cow,distance=..5]
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run kill @e[type=mooshroom,distance=..5]
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run kill @e[type=pig,distance=..5]
/execute if score rng nem_num matches 3 at @e[tag=nemesis] run kill @e[type=sheep,distance=..5]

\var priestStart 
	minecraft:zombie_villager ~ ~ ~ {
		CustomName:"\"Priest\"",
		VillagerData:{profession:"minecraft:priest"},
		<<zombieVillagerData>>,
		HandItems:[
			{
				id:"
\var priestEnd 
				",Count:1
			},
			{}
		],
		<<noHandDrop>>,
		Passengers:[{
			id:"minecraft:potion",
			Potion:{
				id:"minecraft:lingering_potion",
				Count:1,
				tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}
			}
		}]
	}
\var priestJack <<priestStart>>minecraft:jack_o_lantern<<priestEnd>>
\var priestIron <<priestStart>>minecraft:iron_block<<priestEnd>>
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon <<priestJack>>
\repeat 4
/execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon <<priestIron>>

\var blacksmith 
	minecraft:zombie_villager ~ ~ ~ {
		CustomName:"\"Blacksmith\"",
		VillagerData:{profession:"minecraft:armorer"},
		<<zombieVillagerData>>,
		HandItems:[
			{
				id:"minecraft:iron_sword",
				Count:1,
				tag:{Enchantments:[
					{imd:sharpness,lvl:5},
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
		ArmorItems:[
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
/execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon <<blacksmith>>

# Dear god, it's the entire village
\repeat 3
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<nitwit>>
\repeat 3
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<farmer>>
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<librarianStart>>{id:fire_aspect,lvl:2}<<librarianEnd>>
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<librarianStart>>{id:sharpness,lvl:5}<<librarianEnd>>
\repeat 2
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<butcher>>
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<priestJack>>
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<priestIron>>
/execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<blacksmith>>

\file teardown.mctemplate
