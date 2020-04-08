\file stray.txt

\var amount 13
\file templates/rng.txt

\clevel 2
/execute if <<step>> 0..2 run tellraw @s {"text":"fast stray","color":"green"}
/execute if <<step>> 0..2 run summon minecraft:stray ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[
		<<maxFollowRange>>,
		{<<setMovementSpeed>>:0.4f}
	],
	<<handItems>>:[
		{
			id:"minecraft:bow",
			tag:{Enchantments:[{id:punch,lvl:2}]},
			Count:1
		},
		{}
	],
	<<noHandDrop>>
}
\clevel 2
/execute if <<step>> 3..5 run tellraw @s {"text":"projectile protection","color":"green"}
/execute if <<step>> 3..5 run summon minecraft:stray ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],

	<<handItems>>:[
		{
			id:"minecraft:bow",
			tag:{Enchantments:[{id:punch,lvl:5}]},
			Count:1},
		{}
	],
	<<noHandDrop>>,

	<<armorItems>>:[
		{
			id:"minecraft:chainmail_boots",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		},
		{
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			id:"minecraft:chainmail_leggings",
			Count:1
		},
		{
			id:"minecraft:chainmail_chestplate",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		},
		{
			id:"minecraft:chainmail_helmet",
			tag:{Enchantments:[{id:projectile_protection,lvl:4}]},
			Count:1
		}
	],
	<<noArmorDrop>>
}
\clevel 2
/execute if <<step>> 6..8 run tellraw @s {"text":"rabbit stray","color":"green"}
/execute if <<step>> 6..8 run summon minecraft:rabbit ~ ~ ~ {
	<<whiteBunny>>,
	<<passengers>>:[{
		id:"minecraft:stray",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>
	}]
}
\clevel 2
/execute if <<step>> 9..11 run tellraw @s {"text":"bat stray","color":"green"}
/execute if <<step>> 9..11 run summon minecraft:bat ~ ~ ~ {
	Passengers:[{
		id:"minecraft:stray",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],
		
		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,
		
		<<effects>>:[{<<slowFallingId>>,Amplifier:0,<<maxDuration>>}]
	}]
}
\clevel 2
/execute if <<step>> 12 run tellraw @s {"text":"killer rabbit stray","color":"green"}
/execute if <<step>> 12 run summon minecraft:rabbit ~ ~ ~ {
	<<killerBunny>>,
	<<passengers>>:[{
		id:"minecraft:stray",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],

		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>
	}]
}

\file templates/rng_teardown.txt
