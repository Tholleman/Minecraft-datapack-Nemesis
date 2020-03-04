${var name Drowned}
${file global.mctemplate}
#                    123456789 123456
${var scoreboardName nem_drowned}
${var mobId drowned}
${var amount 8}

${file setup.mctemplate}

# Summon one of the drowned
execute if score rng nem_num matches 0..1 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {
	CustomName:"\"Angler Fish\"",
	<<defaultData>>,
	CanPickUpLoot:0b,
	Silent:1,
	IsBaby:1,
	ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1}],
	<<noArmorDrop>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]
};

execute if score rng nem_num matches 2..3 at @e[tag=nemesis] run summon minecraft:drowned ~ ~ ~ {
	CustomName:"\"Diver\"",
	<<defaultData>>,
	CanPickUpLoot:1b,
	HandItems:[{id:"minecraft:fishing_rod",Count:1},{}],
	<<noHandDrop>>,
	ArmorItems:[
		{id:"minecraft:leather_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},
		{id:"minecraft:leather_leggings",Count:1},
		{id:"minecraft:leather_chestplate",Count:1},
		{id:"minecraft:white_stained_glass",Count:1}
	],
	<<noArmorDrop>>
};

${var bodyguard \
	minecraft:drowned ~ ~ ~ {\
    	CustomName:"\"Bodyguard\"",\
    	<<persistent>>,\
    	CanPickUpLoot:1b,\

    	<<attributeStart>>,\
    		{Name:"generic.knockbackResistance",Base:0.33f}\
    	<<attributeEnd>>,\

    	LeftHanded:1,\
    	HandItems:[\
    		{},\
    		{id:"minecraft:trident",Count:1}\
    	],\
    	<<noHandDrop>>,\

    	ArmorItems:[\
    		{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},\
    		{id:"minecraft:chainmail_leggings",Count:1},\
    		{id:"minecraft:chainmail_chestplate",Count:1},\
    		{id:"minecraft:chainmail_helmet",Count:1}\
    	],\
    	<<noArmorDrop>>\
    }\
}

${var triton \
	minecraft:drowned ~ ~ ~ {\
    	CustomName:"\"Triton\"",\
    	<<persistent>>,\
    	CanPickUpLoot:1b,\

    	Health:40,\
    	<<attributeStart>>,\
    		{Name:"generic.maxHealth",Base:40},\
    		{Name:"generic.knockbackResistance",Base:0.5f}\
    	<<attributeEnd>>,\

    	HandItems:[{id:"minecraft:trident",Count:1},{}],\
    	<<noHandDrop>>,\

    	ArmorItems:[\
    		{id:"minecraft:chainmail_boots",Count:1,tag:{Enchantments:[{id:frost_walker,lvl:2}]}},\
    		{id:"minecraft:chainmail_leggings",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},\
    		{id:"minecraft:chainmail_chestplate",Count:1,tag:{Enchantments:[{id:protection,lvl:2}]}},\
    		{id:"minecraft:golden_helmet",Count:1,tag:{Enchantments:[{id:protection,lvl:4}]}}\
    	],\
    	<<noArmorDrop>>\
    }\
}

execute if score rng nem_num matches 4..5 at @e[tag=nemesis] run summon <<bodyguard>>;

execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<triton>>;
${repeat 4}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon <<bodyguard>>;

execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon <<triton>>;
${repeat 4}
execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon <<bodyguard>>;
${var summonBlock execute if score rng nem_num matches 7 at @e[tag=nemesis] run summon falling_block}
${var magmaBlockEntity BlockState:{Name:"minecraft:magma_block"},Time:1}
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[2.0d,0.4d,2d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.2d,0.3d,1.5d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.6d,0.2d,0.1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.8d,0.3d,-1.3d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.4d,0.3d,-1.9d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.6d,0.2d,1.7d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.4d,0.2d,1.4d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[1.0d,0.2d,-0.1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.2d,0.4d,-1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.8d,0.3d,-1.8d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.2d,0.4d,1.6d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0.4d,0.2d,2.1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[0d,0d,0d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.2d,0.1d,-0.9d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.4d,0.1d,-0.2d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.2d,0.3d,2d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.4d,0.4d,1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.8d,0.2d,0d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-0.6d,0.3d,-1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.0d,0.1d,-2d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-2.0d,0.3d,1.7d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.8d,0.1d,1d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.4d,0.1d,0.2d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.6d,0.2d,-1.4d]};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>,Motion:[-1.2d,0.3d,-1.4d]};
${var magmaBlockEntity <<magmaBlockEntity>>,Motion:[0d,0d,0d]}
<<summonBlock>> ~2 ~1 ~2 {<<magmaBlockEntity>>};
<<summonBlock>> ~2 ~1 ~1 {<<magmaBlockEntity>>};
<<summonBlock>> ~2 ~1 ~ {<<magmaBlockEntity>>};
<<summonBlock>> ~2 ~1 ~-1 {<<magmaBlockEntity>>};
<<summonBlock>> ~2 ~1 ~-2 {<<magmaBlockEntity>>};
<<summonBlock>> ~1 ~1 ~2 {<<magmaBlockEntity>>};
<<summonBlock>> ~1 ~1 ~1 {<<magmaBlockEntity>>};
<<summonBlock>> ~1 ~1 ~ {<<magmaBlockEntity>>};
<<summonBlock>> ~1 ~1 ~-1 {<<magmaBlockEntity>>};
<<summonBlock>> ~1 ~1 ~-2 {<<magmaBlockEntity>>};
<<summonBlock>> ~ ~1 ~2 {<<magmaBlockEntity>>};
<<summonBlock>> ~ ~1 ~1 {<<magmaBlockEntity>>};
<<summonBlock>> ~ ~1 ~ {<<magmaBlockEntity>>};
<<summonBlock>> ~ ~1 ~-1 {<<magmaBlockEntity>>};
<<summonBlock>> ~ ~1 ~-2 {<<magmaBlockEntity>>};
<<summonBlock>> ~-1 ~1 ~2 {<<magmaBlockEntity>>};
<<summonBlock>> ~-1 ~1 ~1 {<<magmaBlockEntity>>};
<<summonBlock>> ~-1 ~1 ~ {<<magmaBlockEntity>>};
<<summonBlock>> ~-1 ~1 ~-1 {<<magmaBlockEntity>>};
<<summonBlock>> ~-1 ~1 ~-2 {<<magmaBlockEntity>>};
<<summonBlock>> ~-2 ~1 ~2 {<<magmaBlockEntity>>};
<<summonBlock>> ~-2 ~1 ~1 {<<magmaBlockEntity>>};
<<summonBlock>> ~-2 ~1 ~ {<<magmaBlockEntity>>};
<<summonBlock>> ~-2 ~1 ~-1 {<<magmaBlockEntity>>};
<<summonBlock>> ~-2 ~1 ~-2 {<<magmaBlockEntity>>};

${file teardown.mctemplate}