execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=hoglin] add nemesis
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute at @e[tag=nemesis] run summon minecraft:hoglin ~ ~ ~ {Age:-900}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Hoglin feast","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:hoglin
tag @e[tag=nemesis] remove nemesis