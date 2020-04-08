scoreboard players set amount nem_num 12
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_phantom dummy "Nemesis Phantom Progress"
scoreboard players add @s nem_phantom 0
execute if score @s nem_phantom < amount nem_num run scoreboard players operation rng nem_num = @s nem_phantom
execute if score rng nem_num matches 0..5 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Greater Phantom\"",Size:3,Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:1f}]}
execute if score rng nem_num matches 6..8 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Nightmare Phantom\"",Size:10,Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:1f}]}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Invisible Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Invisible Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Invisible Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Invisible Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 9 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Invisible Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
execute if score rng nem_num matches 10 at @e[tag=nemesis] run summon minecraft:phantom ~ ~ ~ {CustomName:"\"Phantom King\"",PersistenceRequired:1b,Silent:1b,Size:20,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.attack_damage",Base:8}]}
execute if score rng nem_num matches 11 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {CustomName:"\"a different kind of Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_sword",Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 11 at @e[tag=nemesis] run summon minecraft:vex ~ ~ ~ {CustomName:"\"a different kind of Phantom\"",PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:iron_sword",Count:1},{}],HandDropChances:[0F,0F]}
scoreboard players add @s[scores={nem_phantom=..11}] nem_phantom 1
scoreboard players reset rng
scoreboard players reset amount