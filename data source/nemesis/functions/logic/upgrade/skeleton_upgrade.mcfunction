\file skeleton.txt

\var amount 4
\file templates/rng.txt

# If the skeleton believes it's that mob, it should upgrade like one
/data modify entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_zombie,limit=1] PersistenceRequired set value 0b
/execute if entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_zombie] run function nemesis:logic/upgrade/zombie
/data modify entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_blaze,limit=1] PersistenceRequired set value 0b
/execute if entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_blaze] run function nemesis:logic/upgrade/blaze
/data modify entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_wither_skeleton,limit=1] PersistenceRequired set value 0b
/execute if entity @e[<<toUpgradeSelector>>,tag=nem_skeleton_wither_skeleton] run function nemesis:logic/upgrade/wither_skeleton

# Summon one of the nemesis
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"zombie","color":"green"}
/execute if <<step>> 0 run summon minecraft:skeleton ~ ~ ~ {
	<<customName>>:"\"Zombie\"",
	Tags:["nem_skeleton_zombie"],
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setAttackDamage>>:5}
	],
	<<armorItems>>:[
		{id:"minecraft:leather_boots",tag:{display:{color:7105634}},Count:1},
		{id:"minecraft:leather_leggings",tag:{display:{color:4602788}},Count:1},
		{id:"minecraft:leather_chestplate",tag:{display:{color:175790}},Count:1},
		{id:"minecraft:zombie_head",Count:1}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"blaze","color":"green"}
/execute if <<step>> 1 run summon minecraft:skeleton ~ ~ ~ {
	<<customName>>:"\"Blaze\"",
	Tags:["nem_skeleton_blaze"],
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],

	<<handItems>>:[{id:"minecraft:bow",tag:{Enchantments:[{id:flame,lvl:1}]},Count:1},{}],
	<<noHandDrop>>,

	<<onFire>>,
	<<effects>>:[
		{<<fireResistanceId>>,Amplifier:0,<<maxDuration>>,<<noParticles>>},
		<<invisibility>>
	]
}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"wither skeleton","color":"green"}
/execute if <<step>> 2 run summon minecraft:skeleton ~ ~ ~ {
	<<customName>>:"\"Wither Skeleton\"",
	Tags:["nem_skeleton_wither_skeleton"],
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setAttackDamage>>:12}
	],
	
	<<handItems>>:[{id:"minecraft:stone_sword",Count:1},{}],
	<<noHandDrop>>,

	<<armorItems>>:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1}],
	<<noArmorDrop>>
}

\file templates/rng_teardown.txt
