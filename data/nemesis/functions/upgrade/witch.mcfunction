scoreboard players set amount nem_num 7
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_witch dummy "Nemesis Witch Progress"
scoreboard players add @s nem_witch 0
execute if score @s nem_witch < amount nem_num run scoreboard players operation rng nem_num = @s nem_witch
execute unless entity @e[tag=nem_uninstall] run tag @e[sort=nearest,limit=1,type=witch] add nemesis
execute if score rng nem_num matches 0 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:17,Amplifier:1,Duration:1200}]}}}]}
execute if score rng nem_num matches 1 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:600}]}}}]}
execute if score rng nem_num matches 2 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:4,Amplifier:1,Duration:1200}]}}}]}
execute if score rng nem_num matches 3 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:9,Amplifier:0,Duration:300}]}}}]}
execute if score rng nem_num matches 4 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:15,Amplifier:0,Duration:600}]}}}]}
execute if score rng nem_num matches 5 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:27,Amplifier:1,Duration:2147483647,ShowParticles:0b},{Id:31,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:17,Amplifier:1,Duration:1200}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Amplifier:1,Duration:600}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:4,Amplifier:1,Duration:1200}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:9,Amplifier:0,Duration:300}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:15,Amplifier:0,Duration:600}]}}}]}
execute if score rng nem_num matches 6 at @e[tag=nemesis] run summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}],CanPickUpLoot:1b,Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:27,Amplifier:1,Duration:2147483647,ShowParticles:0b},{Id:31,Amplifier:1,Duration:2147483647,ShowParticles:0b}]}}}]}
execute if entity @e[tag=nemesis] run tellraw @s {"text":"The Witch has grown more powerful","italic":true,"color":"dark_red"}
advancement revoke @s only nemesis:witch
execute if entity @e[tag=nemesis] run scoreboard players add @s[scores={nem_witch=..6}] nem_witch 1
tp @e[tag=nemesis] ~ -64 ~
tag @e[tag=nemesis] remove nemesis
scoreboard players reset rng
scoreboard players reset amount
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_witch