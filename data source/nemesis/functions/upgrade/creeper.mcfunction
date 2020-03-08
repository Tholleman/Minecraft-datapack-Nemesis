\var name Cave Spider
\file global.mctemplate
\var scoreboardName nem_creeper
\var mobId creeper
\var name Creeper
\var amount 4
\var message The Creeper has reincarnated into a more powerful version

# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
/scoreboard players set amount nem_num <<amount>>

# Create a random number between 0 and the amount: [0, amount>
/execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
/scoreboard players operation rng nem_num %= amount nem_num

# The player will go through each blaze before a random one is summoned
/scoreboard objectives add <<scoreboardName>> dummy "Nemesis <<name>> Progress"
/scoreboard players add @s <<scoreboardName>> 0
/execute if score @s <<scoreboardName>> < amount nem_num run scoreboard players operation rng nem_num = @s <<scoreboardName>>

# Don't punish the player for uninstalling
/execute if entity @e[tag=nem_uninstall] run scoreboard players set rng nem_num -1

# Summon one of the creepers
/execute if score rng nem_num matches 0 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Doubled Creeper\"",
	<<defaultData>>,
	ExplosionRadius:6,
	Fuse:60,
	# 20 hearts
	ActiveEffects:[{Id:21,Amplifier:4,Duration:2147483647}]
}
/execute if score rng nem_num matches 1 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Stormy\"",
	<<persistent>>,
	powered:1,
	Silent:1,
	<<attributeStart>>,
		{Name:"generic.knockbackResistance",Base:0.6f},
		{Name:"generic.movementSpeed",Base:0.2f}
	<<attributeEnd>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}]
}
/execute if score rng nem_num matches 2 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Disguised\"",
	<<defaultData>>,
	# Invisibility
	ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],
	Passengers:[{id:"minecraft:bat"}]
}
\repeat 3
/execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {
	CustomName:"\"Missile\"",
	<<persistent>>,
	Fuse:10,
	Fire:1277951,
	# Fire Resistance
	ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647}],
	<<attributeStart>>,
		{Name:"generic.maxHealth",Base:10},
		{Name:"generic.movementSpeed",Base:0.5f}
	<<attributeEnd>>
}

/execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"<<message>>","italic":true,"color":"dark_red"}

# Reset for another summoning
/advancement revoke @s only nemesis:<<mobId>>
/scoreboard players add @s[scores={<<scoreboardName>>=..<<<<amount>> - 1>>}] nem_creeper 1

# Clean up
/scoreboard players reset rng
/scoreboard players reset amount
/execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove <<scoreboardName>>
