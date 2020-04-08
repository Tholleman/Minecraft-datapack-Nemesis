execute unless entity @e[tag=nem_uninstall] run function nemesis:logic/upgrade/enderman_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Enderman broke you down into Endermites","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:enderman