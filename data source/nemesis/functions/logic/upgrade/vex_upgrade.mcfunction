\file vex.txt

\clevel 2
/tellraw @s {"text":"raid leader pillager","color":"green"}
/summon minecraft:pillager ~ ~ ~ {
	<<persistent>>,
	<<attributes>>:[<<maxFollowRange>>],
	
	<<handItems>>:[{id:"minecraft:crossbow",Count:1},<<pillagerFireworks>>],
	<<noHandDrop>>,
	
	<<raidLeader>>,
	<<armorItems>>:[
		{},
		{},
		{},
		{<<leaderBanner>>}
	],
	<<noArmorDrop>>
}
