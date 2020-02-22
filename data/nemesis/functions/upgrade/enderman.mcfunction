execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~0.2 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~0.4 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~0.6 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~0.8 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~1 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~1.2 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~1.4 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}
execute unless entity @e[tag=nem_uninstall] run summon minecraft:endermite ~ ~1.6 ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.followRange",Base:64}]}

execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Enderman broke you down into Endermites","italic":true,"color":"dark_red"}

# Reset for another summoning
advancement revoke @s only nemesis:enderman

# Clean up
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_enderman
