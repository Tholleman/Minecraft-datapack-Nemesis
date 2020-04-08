\file rabbit.txt

/tag <<toUpgrade>> remove <<upgradeTag>>

# Tag the killer
/execute 
	unless <<uninstalling>> 
	run tag 
		@e[sort=nearest,limit=1,type=<<type>>] 
		add <<upgradeTag>>

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

# Uninstall
/execute if <<uninstalling>> run scoreboard objectives remove <<scoreboardName>>
