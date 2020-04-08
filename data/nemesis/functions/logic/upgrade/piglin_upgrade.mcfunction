scoreboard players set amount nem_num 8
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng
scoreboard players operation rng nem_num %= amount nem_num
scoreboard objectives add nem_piglin dummy "Nemesis Piglin Progress"
scoreboard players add @s nem_piglin 0
execute if score @s nem_piglin < amount nem_num run scoreboard players operation rng nem_num = @s nem_piglin
execute if score rng nem_num matches 0 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.RepairCost set value 100
execute if score rng nem_num matches 1 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.HideFlags set value 63
execute if score rng nem_num matches 2 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:binding_curse",lvl:1s}
execute if score rng nem_num matches 3 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.Count set value 1
execute if score rng nem_num matches 4 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}
execute if score rng nem_num matches 5 as @e[limit=5,type=item,distance=..5,sort=random] run data remove entity @s Item.tag.Enchantments
execute if score rng nem_num matches 6 as @e[limit=5,type=item,distance=..5,sort=random] run kill @s
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run kill @s
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.Count set value 1
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.HideFlags set value 63
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.RepairCost set value 100
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:binding_curse",lvl:1s}
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}
execute if score rng nem_num matches 7 as @e[limit=5,type=item,distance=..5,sort=random] run data remove entity @s Item.tag.Enchantments
scoreboard players add @s[scores={nem_piglin=..7}] nem_piglin 1
scoreboard players reset rng
scoreboard players reset amount