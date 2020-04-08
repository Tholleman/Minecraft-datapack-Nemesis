execute unless entity @e[tag=nem_uninstall] at @e[sort=nearest,limit=1,type=minecraft:hoglin] run function nemesis:logic/upgrade/hoglin_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Hoglin feast","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:hoglin