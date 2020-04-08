\file zombified_piglin.txt

\var maxRange 64
\var alterAmount 5

\var amount 6
\file templates/rng.txt

\var selector as @e[type=<<type>>,distance=..<<maxRange>>,limit=<<alterAmount>>,sort=random]
\var merge <<selector>> run data merge entity @s

\var defaultData <<looter>>,<<persistent>>

\var increasedHealth 40
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"<<health>> health","color":"green"}
/execute if <<step>> 0 <<merge>> {
	<<customName>>:"\"Heart\"",
	<<looter>>,
	<<persistent>>,
	<<health>>:<<increasedHealth>>,
	<<attributes>>:[
		{<<setMaxHealth>>:<<increasedHealth>>}
	]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"speed","color":"green"}
/execute if <<step>> 1 <<merge>> {
	<<customName>>:"\"Gluteus maximus\"",
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[
		{<<setMovementSpeed>>:0.4f}
	]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"knockback resistance","color":"green"}
/execute if <<step>> 2 <<merge>> {
	<<customName>>:"\"Rectus abdominis\"",
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[
		{<<setKnockbackResistance>>:1f}
	]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"armor","color":"green"}
/execute if <<step>> 3 <<merge>> {
	<<customName>>:"\"Pectoralis major\"",
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[
		{<<setArmor>>:4},
		{<<setArmorToughness>>:4}
	]
}

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"attack","color":"green"}
/execute if <<step>> 4 <<merge>> {
	<<customName>>:"\"Biceps brachii\"",
	<<looter>>,
	<<persistent>>,
	<<attributes>>:[
		{<<setAttackKnockback>>:10},
		{<<setAttackDamage>>:15}
	]
}

\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"all","color":"green"}
/execute if <<step>> 5 <<merge>> {
	<<customName>>:"\"Ultimum cadaver\"",
	<<looter>>,
	<<persistent>>,
	<<health>>:<<increasedHealth>>,
	<<attributes>>:[
		{<<setMaxHealth>>:<<increasedHealth>>},
		{<<setMovementSpeed>>:0.4f},
		{<<setKnockbackResistance>>:1f},
		{<<setArmor>>:4},
		{<<setArmorToughness>>:4},
		{<<setAttackKnockback>>:10},
		{<<setAttackDamage>>:15}
	]
}

/execute at @s run summon zombified_piglin ~ ~ ~ {<<customName>>:"\"Bait\"",<<looter>>}
/execute at @s run tp @e[type=item,distance=..5] ~ ~ ~

\file templates/rng_teardown.txt
