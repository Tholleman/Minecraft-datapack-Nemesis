scoreboard players set amount nem_num 4
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_blaze dummy "Nemesis Blaze Progress"
scoreboard players add @s nem_blaze 0
execute if score @s nem_blaze < amount nem_num run scoreboard players operation rng nem_num = @s nem_blaze
execute if score rng nem_num matches 0 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Doubled Creeper\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ExplosionRadius:6,Fuse:60,ActiveEffects:[{Id:22,Amplifier:4,Duration:2147483647},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 1 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Stormy\"",PersistenceRequired:1b,powered:1,Silent:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:0.6f},{Name:"generic.movement_speed",Base:0.2f}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 2 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Disguised\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"minecraft:bat"}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fuse:10,Fire:1277951,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f},{Name:"generic.max_health",Base:10}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fuse:10,Fire:1277951,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f},{Name:"generic.max_health",Base:10}]}
execute if score rng nem_num matches 3 run summon minecraft:creeper ~ ~ ~ {CustomName:"\"Missile\"",PersistenceRequired:1b,Fuse:10,Fire:1277951,ActiveEffects:[{Id:12,Amplifier:0,Duration:2147483647},{Id:17,Amplifier:4,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.5f},{Name:"generic.max_health",Base:10}]}
scoreboard players add @s[scores={nem_blaze=..3}] nem_blaze 1
scoreboard players reset rng
scoreboard players reset amount