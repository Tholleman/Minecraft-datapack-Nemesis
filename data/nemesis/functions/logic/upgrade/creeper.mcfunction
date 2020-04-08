execute unless entity @e[tag=nem_uninstall] run function nemesis:logic/upgrade/creeper_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Creeper has reincarnated into a more powerful version","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:creeper
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_creeper