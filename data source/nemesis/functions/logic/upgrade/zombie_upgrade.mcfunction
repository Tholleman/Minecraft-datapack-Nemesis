\file zombie.txt

\var amount 5
\file templates/rng.txt

# Summon one of the Zombies
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"patient 0","color":"green"}
/execute if <<step>> 0 run summon minecraft:zombie ~ ~ ~ {
	<<customName>>:"\"Patient 0\"",
	<<persistent>>,
	<<looter>>,
	<<canBreakDoors>>,
	
	<<health>>:40,
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>,
		{<<setMaxHealth>>:40},
		{<<setAttackDamage>>:6}
	]
}
/execute if <<step>> 0 run tp @e[type=item,distance=..5] ~ ~ ~
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"scavenger zombie","color":"green"}
/execute if <<step>> 1 run summon minecraft:zombie ~ ~ ~ {
	<<customName>>:"\"Scavenger\"",
	<<persistent>>,
	<<looter>>,
	<<canBreakDoors>>,
	
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>
	],
	
	<<handItems>>:[{id:"minecraft:stone_sword",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:leather_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:leather_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"golden zombie","color":"green"}
/execute if <<step>> 2 run summon minecraft:zombie ~ ~ ~ {
	<<customName>>:"\"Flaunter\"",
	<<persistent>>,
	<<looter>>,
	<<canBreakDoors>>,
	
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>
	],
	
	<<handItems>>:[{id:"minecraft:golden_sword",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:golden_boots",Count:1},
		{id:"minecraft:golden_leggings",Count:1},
		{id:"minecraft:golden_chestplate",Count:1},
		{id:"minecraft:golden_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"child zombie","color":"green"}
/execute if <<step>> 3 run summon minecraft:zombie ~ ~ ~ {
	<<customName>>:"\"Pest\"",
	<<persistent>>,
	<<looter>>,
	<<canBreakDoors>>,
	<<baby>>,
	
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>
	],
	
	<<handItems>>:[{id:"minecraft:iron_axe",Count:1},{}],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:chainmail_boots",Count:1},
		{id:"minecraft:chainmail_leggings",Count:1},
		{id:"minecraft:chainmail_chestplate",Count:1},
		{id:"minecraft:chainmail_helmet",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"tank zombie","color":"green"}
/execute if <<step>> 4 run summon minecraft:zombie ~ ~ ~ {
	<<customName>>:"\"Tank\"",
	<<persistent>>,
	<<looter>>,
	<<canBreakDoors>>,
	
	<<health>>:100,
	<<attributes>>:[
		<<maxFollowRange>>,
		<<maxZombieReinforcements>>,
		{<<setMaxHealth>>:100},
		{<<setKnockbackResistance>>:0.8f},
		{<<setMovementSpeed>>:0.2f},
		{<<setAttackDamage>>:8}
	],
		
	<<handItems>>:[
		{id:"minecraft:stone_sword",Count:1},
		{id:"minecraft:shield",Count:1}
	],
	<<noHandDrop>>,
	
	<<armorItems>>:[
		{id:"minecraft:iron_boots",Count:1},
		{id:"minecraft:iron_leggings",Count:1},
		{id:"minecraft:iron_chestplate",Count:1},
		{id:"minecraft:iron_helmet",Count:1}
	],
	<<noArmorDrop>>
}

\file templates/rng_teardown.txt
