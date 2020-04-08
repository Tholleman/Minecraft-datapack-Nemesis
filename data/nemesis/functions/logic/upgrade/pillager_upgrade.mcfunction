scoreboard players set amount nem_num 5
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_pillager dummy "Nemesis Pillager Progress"
scoreboard players add @s nem_pillager 0
execute if score @s nem_pillager < amount nem_num run scoreboard players operation rng nem_num = @s nem_pillager
execute if score rng nem_num matches 0 run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],CanPickUpLoot:1b,HandItems:[{id:"minecraft:wooden_axe",Count:1},{}],HandDropChances:[0F,0F],ActiveEffects:[{Id:1,Amplifier:0,Duration:2147483647},{Id:8,Amplifier:1,Duration:2147483647}]}
execute if score rng nem_num matches 1 run summon minecraft:vindicator ~ ~ ~ {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.movement_speed",Base:0.4f}],HandItems:[{id:"minecraft:stone_axe",tag:{Enchantments:[{id:knockback,lvl:10}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 run summon minecraft:vindicator ~ ~ ~ {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:0.2f}],HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 3 run summon minecraft:vindicator ~ ~ ~ {CanPickUpLoot:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:2048}],Silent:1b,HandItems:[{id:"minecraft:golden_axe",tag:{Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 4 run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"generic.knockback_resistance",Base:0.4f}],HandItems:[{id:"minecraft:diamond_axe",Count:1},{}],HandDropChances:[0F,0F],PatrolLeader:1b,ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}]},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}],ArmorDropChances:[0F,0F,0F,0F]}
scoreboard players add @s[scores={nem_pillager=..4}] nem_pillager 1
scoreboard players reset rng
scoreboard players reset amount