execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b}
execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Enderman broke you down into Endermites","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:enderman
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_enderman