\file endermite.txt

\var amount 6
\file templates/rng.txt

\var endermiteData 
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	<<effects>>:[<<invisibility>>]

# Summon one of the endermites
\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"Tundra","color":"green"}
/execute if <<step>> 0 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Tundra\"",
	<<endermiteData>>,
	<<passengers>>:[{
		id:"minecraft:stray",
		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>]
	}]
}

\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"Dessert","color":"green"}
/execute if <<step>> 1 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Dessert\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:husk",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 1 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Dessert\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:rabbit",<<killerBunny>>,<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}

\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"Plains","color":"green"}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:creeper",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{
		id:"minecraft:skeleton",
		<<handItems>>:[{id:"minecraft:bow",Count:1},{}],
		<<noHandDrop>>,
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>]
	}]
}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:spider",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:witch",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:zombie",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 2 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Plains\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:zombie_villager",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}

\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"Underground","color":"green"}
/execute if <<step>> 3 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Underground\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:cave_spider",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 3 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Underground\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:silverfish",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 3 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Underground\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:slime",Size:3,<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}

\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"Nether","color":"green"}
/execute if <<step>> 4 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Nether\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:blaze",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 4 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Nether\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:magma_cube",Size:3,<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}
/execute if <<step>> 4 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Nether\"",
	<<endermiteData>>,
	<<passengers>>:[{
		id:"minecraft:wither_skeleton",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],

		<<handItems>>:[{id:"minecraft:stone_sword",Count:1},{}],
		<<noHandDrop>>
	}]
}

\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"Raid","color":"green"}
/execute if <<step>> 5 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Raid\"",
	<<endermiteData>>,
	<<passengers>>:[{
		id:"minecraft:pillager",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],

		<<handItems>>:[{id:"minecraft:crossbow",Count:1},{}],
		<<noHandDrop>>
	}]
}
/execute if <<step>> 5 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Raid\"",
	<<endermiteData>>,
	<<passengers>>:[{
		id:"minecraft:vindicator",
		<<persistent>>,
		<<attributes>>:[<<maxFollowRange>>],

		<<handItems>>:[{id:"minecraft:iron_axe",Count:1},{}],
		<<noHandDrop>>
	}]
}
/execute if <<step>> 5 run summon minecraft:endermite ~ ~ ~ {
	<<customName>>:"\"Raid\"",
	<<endermiteData>>,
	<<passengers>>:[{id:"minecraft:evoker",<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>]}]
}

\file templates/rng_teardown.txt
