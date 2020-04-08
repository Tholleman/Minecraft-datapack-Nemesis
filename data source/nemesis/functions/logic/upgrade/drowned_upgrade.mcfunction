\file drowned.txt

\var amount 8
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0..1 run tellraw @s {"text":"Angler Fish","color":"green"}
/execute if <<step>> 0..1 run summon minecraft:drowned ~ ~ ~ {
	<<customName>>:"\"Angler Fish\"",
	<<persistent>>,
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<noLoot>>,
	<<silent>>,
	<<baby>>,
	<<armorItems>>:[{},{},{},{id:"minecraft:lantern",Count:1}],
	<<noArmorDrop>>,
	<<effects>>:[<<invisibility>>]
}

\clevel 2
/execute if <<step>> 2..3 run tellraw @s {"text":"Diver","color":"green"}
/execute if <<step>> 2..3 run summon minecraft:drowned ~ ~ ~ {
	<<customName>>:"\"Diver\"",
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<looter>>,
	<<handItems>>:[{id:"minecraft:fishing_rod",Count:1},{}],
	<<noHandDrop>>,
	<<armorItems>>:[
		{id:"minecraft:leather_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},
		{id:"minecraft:leather_leggings",Count:1},
		{id:"minecraft:leather_chestplate",Count:1},
		{id:"minecraft:white_stained_glass",Count:1}
	],
	<<noArmorDrop>>
}

\var bodyguard 
	minecraft:drowned ~ ~ ~ {
		<<customName>>:"\"Bodyguard\"",
		<<persistent>>,
		<<looter>>,
		
		<<attributes>>:[
			<<maxFollowRange>>,
			{<<setKnockbackResistance>>:0.33f}
		],
		
		<<leftHanded>>,
		<<handItems>>:[
			{},
			{id:"minecraft:trident",Count:1}
		],
		<<noHandDrop>>,

    	<<armorItems>>:[
    		{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},
    		{id:"minecraft:chainmail_leggings",Count:1},
    		{id:"minecraft:chainmail_chestplate",Count:1},
    		{id:"minecraft:chainmail_helmet",Count:1}
    	],
    	<<noArmorDrop>>
    }

\var triton 
	minecraft:drowned ~ ~ ~ {
		<<customName>>:"\"Triton\"",
		<<persistent>>,
		<<looter>>,
		
		<<health>>:40,
		<<attributes>>:[
			<<maxFollowRange>>,
			{<<setMaxHealth>>:40},
			{<<setKnockbackResistance>>:0.5f}
		],
		
		<<handItems>>:[{id:"minecraft:trident",Count:1},{}],
		<<noHandDrop>>,
		
		<<armorItems>>:[
			{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},
			{id:"minecraft:chainmail_leggings",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},
			{id:"minecraft:chainmail_chestplate",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},
			{id:"minecraft:golden_helmet",Count:1,tag:{Enchantments:[{id:protection,lvl:4}]}}
		],
		<<noArmorDrop>>
	}

\clevel 2
/execute if <<step>> 4..5 run tellraw @s {"text":"Bodyguard","color":"green"}
/execute if <<step>> 4..5 run summon <<bodyguard>>

\clevel 2
/execute if <<step>> 6 run tellraw @s {"text":"Triton","color":"green"}
/execute if <<step>> 6 run summon <<triton>>
\repeat 4
/execute if <<step>> 6 run summon <<bodyguard>>

\clevel 2
/execute if <<step>> 7 run tellraw @s {"text":"Triton w magma","color":"green"}
/execute if <<step>> 7 run summon <<triton>>
\repeat 4
/execute if <<step>> 7 run summon <<bodyguard>>
\var summonBlock execute if <<step>> 7 at @e[tag=nemesis] run summon falling_block
\var magmaBlockEntity BlockState:{Name:"minecraft:magma_block"},Time:1
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[2.0d,0.4d,2d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.2d,0.3d,1.5d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.6d,0.2d,0.1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.8d,0.3d,-1.3d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.4d,0.3d,-1.9d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.6d,0.2d,1.7d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.4d,0.2d,1.4d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.0d,0.2d,-0.1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.2d,0.4d,-1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.8d,0.3d,-1.8d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.2d,0.4d,1.6d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.4d,0.2d,2.1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0d,0d,0d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.2d,0.1d,-0.9d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.4d,0.1d,-0.2d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.2d,0.3d,2d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.4d,0.4d,1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.8d,0.2d,0d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.6d,0.3d,-1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.0d,0.1d,-2d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-2.0d,0.3d,1.7d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.8d,0.1d,1d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.4d,0.1d,0.2d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.6d,0.2d,-1.4d]}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.2d,0.3d,-1.4d]}
\var magmaBlockEntity <<magmaBlockEntity>>,Motion:[0d,0d,0d]
/<<summonBlock>> ~2 ~1 ~2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~2 ~1 ~1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~2 ~1 ~ {<<magmaBlockEntity>>}
/<<summonBlock>> ~2 ~1 ~-1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~2 ~1 ~-2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~1 ~1 ~2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~1 ~1 ~1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~1 ~1 ~ {<<magmaBlockEntity>>}
/<<summonBlock>> ~1 ~1 ~-1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~1 ~1 ~-2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~ ~1 ~2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~ ~1 ~1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>}
/<<summonBlock>> ~ ~1 ~-1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~ ~1 ~-2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-1 ~1 ~2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-1 ~1 ~1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-1 ~1 ~ {<<magmaBlockEntity>>}
/<<summonBlock>> ~-1 ~1 ~-1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-1 ~1 ~-2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-2 ~1 ~2 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-2 ~1 ~1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-2 ~1 ~ {<<magmaBlockEntity>>}
/<<summonBlock>> ~-2 ~1 ~-1 {<<magmaBlockEntity>>}
/<<summonBlock>> ~-2 ~1 ~-2 {<<magmaBlockEntity>>}

\file templates/rng_teardown.txt
