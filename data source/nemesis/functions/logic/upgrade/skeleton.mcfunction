\file skeleton.txt

# Tag the killer
/execute 
	unless <<uninstalling>> 
	run tag 
		@e[sort=nearest,limit=1,type=<<type>>] 
		add <<upgradeTag>>

# Don't upgrade the killer if it's persistent.
# The player could lose their loot if the killer is replaced.
/execute 
	as @e[<<toUpgradeSelector>>,nbt={PersistenceRequired:1b}] 
	unless entity @s[tag=nem_skeleton_zombie] 
	unless entity @s[tag=nem_skeleton_blaze] 
	unless entity @s[tag=nem_skeleton_wither_skeleton] 
	run tag @s remove <<upgradeTag>>

# Upgrade
/execute 
	if entity <<toUpgrade>> 
	at <<toUpgrade>> 
	run function nemesis:logic/upgrade/<<fileBase>>_upgrade

# Warn the player
/execute 
	if entity <<toUpgrade>> 
	run tellraw @s {
		"text":"<<message>>",
		"italic":true,
		"color":"dark_red"
	}

# Reset for another summoning
/advancement revoke @s only nemesis:<<fileBase>>

# Kill the original killer
/tp <<toUpgrade>> ~ -128 ~
/kill <<toUpgrade>>
/tag <<toUpgrade>> remove <<upgradeTag>>

# Uninstall
/execute if <<uninstalling>> run scoreboard objectives remove <<scoreboardName>>
