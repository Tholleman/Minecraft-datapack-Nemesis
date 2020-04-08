\file enderman.txt

# Upgrade
/execute 
	unless <<uninstalling>> 
	run function nemesis:logic/upgrade/<<fileBase>>_upgrade

# Warn the player
/execute 
	unless <<uninstalling>> 
	run tellraw @s {
		"text":"<<message>>",
		"italic":true,
		"color":"dark_red"
	}

# Reset for another summoning
/advancement revoke @s only nemesis:<<fileBase>>