\var name Zombified Piglin
\file global.mctemplate
\var amount 6

\var maxRange 64
\var alterAmount 5
\var mobId zombified_piglin
\var scoreboardName nem_zombified_pi
\var warnDefault <<warnNoTag>>

# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
/scoreboard players set amount nem_num <<amount>>

# Create a random number between 0 and the amount: [0, amount>
/execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
/scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each Zombified Piglin before a random one is summoned
/scoreboard objectives add <<scoreboardName>> dummy "Nemesis Zombified Piglin Progress"
/scoreboard players add @s <<scoreboardName>> 0
/execute if score @s <<scoreboardName>> < amount nem_num run scoreboard players operation rng nem_num = @s <<scoreboardName>>

/execute if entity @e[tag=nem_uninstall] run scoreboard players set rng nem_num -1

\var selector as @e[type=minecraft:zombified_piglin,distance=..<<maxRange>>,limit=<<alterAmount>>,sort=random]
\var merge <<selector>> run data merge entity @s

\var attributes Attributes:[
\var attributesEnd ]

\var atrSingle <<attributes>>{Name:"
\var atrTo ",Base:
\var atrEnd }<<attributesEnd>>

/execute unless entity @e[tag=nem_uninstall] run summon zombified_piglin ~ ~ ~ {CustomName:"\"Bait\"",<<sticky>>}
/execute unless entity @e[tag=nem_uninstall] run tp @e[type=item,distance=..<<<<amount>> - 1>>] ~ ~ ~

\var defaultData <<sticky>>,<<persistent>>
\var health 40

\clevel 2
/execute if <<step>> 0 run tellraw @s {"text":"<<health>> health","color":"green"}
/execute if <<step>> 0 <<merge>> {<<defaultData>>,<<atrSingle>>generic.maxHealth<<atrTo>><<health>><<atrEnd>>,Health:<<health>>,CustomName:"\"Heart\""}
\clevel 2
/execute if <<step>> 1 run tellraw @s {"text":"speed","color":"green"}
/execute if <<step>> 1 <<merge>> {<<defaultData>>,<<atrSingle>>generic.movementSpeed<<atrTo>>0.4<<atrEnd>>,CustomName:"\"Gluteus maximus\""}
\clevel 2
/execute if <<step>> 2 run tellraw @s {"text":"knockback resistance","color":"green"}
/execute if <<step>> 2 <<merge>> {<<defaultData>>,<<atrSingle>>generic.knockbackResistance<<atrTo>>1<<atrEnd>>,CustomName:"\"Rectus abdominis\""}
\clevel 2
/execute if <<step>> 3 run tellraw @s {"text":"armor","color":"green"}
/execute if <<step>> 3 <<merge>> {<<defaultData>>,<<attributes>>{Name:"generic.armor",Base:4},{Name:"generic.armorToughness",Base:4}<<attributesEnd>>,CustomName:"\"Pectoralis major\""}
\clevel 2
/execute if <<step>> 4 run tellraw @s {"text":"attack","color":"green"}
/execute if <<step>> 4 <<merge>> {<<defaultData>>,<<attributes>>{Name:"generic.attackKnockback",Base:10},{Name:"generic.attackDamage",Base:15}<<attributesEnd>>,CustomName:"\"Biceps brachii\""}
\clevel 2
/execute if <<step>> 5 run tellraw @s {"text":"all","color":"green"}
/execute if <<step>> 5 <<merge>> {
	<<defaultData>>,
	<<attributes>>
		{Name:"generic.maxHealth",Base:<<health>>},
		{Name:"generic.movementSpeed",Base:0.4},
		{Name:"generic.knockbackResistance",Base:1},
		{Name:"generic.armor",Base:4},
		{Name:"generic.armorToughness",Base:4},
		{Name:"generic.attackKnockback",Base:10},
		{Name:"generic.attackDamage",Base:15}
	<<attributesEnd>>,
	Health:<<health>>,
	CustomName:"\"Ultimum cadaver\""
}

\file teardown no kill.mctemplate
