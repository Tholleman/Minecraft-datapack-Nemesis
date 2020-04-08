scoreboard players set amount nem_num 7
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_zombie dummy "Nemesis Zombie Progress"
scoreboard players add @s nem_zombie 0
execute if score @s nem_zombie < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie
execute if score rng nem_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 0 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 1 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 1 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 1 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Librarian\"",VillagerData:{profession:"minecraft:librarian"},PersistenceRequired:1b,CanPickUpLoot:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:30}],CanBreakDoors:1b,HandItems:[{id:"minecraft:writable_book",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Librarian\"",VillagerData:{profession:"minecraft:librarian"},PersistenceRequired:1b,CanPickUpLoot:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:30}],CanBreakDoors:1b,HandItems:[{id:"minecraft:writable_book",tag:{Enchantments:[{id:fire_aspect,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 2 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Librarian\"",VillagerData:{profession:"minecraft:librarian"},PersistenceRequired:1b,CanPickUpLoot:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:30}],CanBreakDoors:1b,HandItems:[{id:"minecraft:writable_book",tag:{Enchantments:[{id:sharpness,lvl:5}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 3 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Butcher\"",VillagerData:{profession:"minecraft:butcher"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.movement_speed",Base:0.4f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Butcher\"",VillagerData:{profession:"minecraft:butcher"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.movement_speed",Base:0.4f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Butcher\"",VillagerData:{profession:"minecraft:butcher"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.movement_speed",Base:0.4f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 3 run kill @e[type=chicken,distance=..5]
execute if score rng nem_num matches 3 run kill @e[type=cow,distance=..5]
execute if score rng nem_num matches 3 run kill @e[type=mooshroom,distance=..5]
execute if score rng nem_num matches 3 run kill @e[type=pig,distance=..5]
execute if score rng nem_num matches 3 run kill @e[type=sheep,distance=..5]
execute if score rng nem_num matches 4 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:jack_o_lantern",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 4 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_block",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 4 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_block",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 4 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_block",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 4 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_block",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 5 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Blacksmith\"",VillagerData:{profession:"minecraft:armorer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_sword",Count:1,tag:{Enchantments:[{id:sharpness,lvl:5},{id:knockback,lvl:2},{id:fire_aspect,lvl:2},{id:looting,lvl:3},{id:sweeping,lvl:3},{id:mending,lvl:1}]}},{id:"minecraft:shield",tag:{Enchantments:[{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:iron_boots",tag:{Enchantments:[{id:fire_protection,lvl:4},{id:feather_falling,lvl:4},{id:thorns,lvl:3},{id:frost_walker,lvl:2},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_leggings",tag:{Enchantments:[{id:projectile_protection,lvl:4},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:protection,lvl:4},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_helmet",Count:1,tag:{Enchantments:[{id:blast_protection,lvl:4},{id:respiration,lvl:3},{id:aqua_affinity,lvl:1},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]}}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Nitwit\"",VillagerData:{profession:"minecraft:nitwit"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Farmer\"",VillagerData:{profession:"minecraft:farmer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_hoe",tag:{Enchantments:[{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Librarian\"",VillagerData:{profession:"minecraft:librarian"},PersistenceRequired:1b,CanPickUpLoot:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:30}],CanBreakDoors:1b,HandItems:[{id:"minecraft:writable_book",tag:{Enchantments:[{id:sharpness,lvl:5},{id:fire_aspect,lvl:2},{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Librarian\"",VillagerData:{profession:"minecraft:librarian"},PersistenceRequired:1b,CanPickUpLoot:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.max_health",Base:30}],CanBreakDoors:1b,HandItems:[{id:"minecraft:writable_book",tag:{Enchantments:[{id:sharpness,lvl:5},{id:fire_aspect,lvl:2},{id:knockback,lvl:2}]},Count:1},{}],HandDropChances:[0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Butcher\"",VillagerData:{profession:"minecraft:butcher"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.movement_speed",Base:0.4f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Butcher\"",VillagerData:{profession:"minecraft:butcher"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f},{Name:"generic.movement_speed",Base:0.4f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_axe",Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],ArmorDropChances:[0F,0F,0F,0F]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:jack_o_lantern",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Priest\"",VillagerData:{profession:"minecraft:priest"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_block",Count:1},{}],HandDropChances:[0F,0F],Passengers:[{id:"minecraft:potion",Potion:{id:"minecraft:lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:7,Amplifier:2,Duration:1200}]}}}]}
execute if score rng nem_num matches 6 run summon minecraft:zombie_villager ~ ~ ~ {CustomName:"\"Blacksmith\"",VillagerData:{profession:"minecraft:armorer"},PersistenceRequired:1b,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:2048},{Name:"zombie.spawn_reinforcements",Base:1f}],CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_sword",Count:1,tag:{Enchantments:[{id:sharpness,lvl:5},{id:knockback,lvl:2},{id:fire_aspect,lvl:2},{id:looting,lvl:3},{id:sweeping,lvl:3},{id:mending,lvl:1}]}},{id:"minecraft:shield",tag:{Enchantments:[{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1}],HandDropChances:[0F,0F],ArmorItems:[{id:"minecraft:iron_boots",tag:{Enchantments:[{id:fire_protection,lvl:4},{id:feather_falling,lvl:4},{id:thorns,lvl:3},{id:frost_walker,lvl:2},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_leggings",tag:{Enchantments:[{id:projectile_protection,lvl:4},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:protection,lvl:4},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]},Count:1},{id:"minecraft:iron_helmet",Count:1,tag:{Enchantments:[{id:blast_protection,lvl:4},{id:respiration,lvl:3},{id:aqua_affinity,lvl:1},{id:thorns,lvl:3},{id:unbreaking,lvl:3},{id:mending,lvl:1}]}}],ArmorDropChances:[0F,0F,0F,0F]}
scoreboard players add @s[scores={nem_zombie=..6}] nem_zombie 1
scoreboard players reset rng
scoreboard players reset amount