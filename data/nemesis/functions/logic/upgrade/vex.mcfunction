execute unless entity @e[tag=nem_uninstall] at @e[sort=nearest,limit=1,type=minecraft:vex] run function nemesis:logic/upgrade/vex_upgrade
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Vex has increased the raid","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:vex