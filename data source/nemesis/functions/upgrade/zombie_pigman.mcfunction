${var amount 5}
${var maxRange 64}

# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num <<amount>>;

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng;
scoreboard players operation rng nem_num %= amount nem_num;

# The player will go through each Zombie Pigman before a random one is summoned
scoreboard objectives add nem_zombie_pigma dummy "Nemesis Zombie Pigman Progress";
scoreboard players add @s nem_zombie_pigma 0;
execute if score @s nem_zombie_pigma < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombie_pigma;

${var chance0 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..<<maxRange>>]}
${var chance1 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..<<maxRange>>]}
${var chance2 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..<<maxRange>>]}
${var chance3 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..<<maxRange>>]}
${var chance4 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4..4 run data merge entity @e[type=minecraft:zombie_pigman,sort=random,limit=1,distance=..<<maxRange>>]}

${var standardStart PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64}}
${var standardEnd ]}

# Knockback
<<chance0>> {<<standardStart>>,{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance1>> {<<standardStart>>,{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance2>> {<<standardStart>>,{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance3>> {<<standardStart>>,{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance4>> {<<standardStart>>,{Name:"generic.followRange",Base:64}<<standardEnd>>};
# Max Health
<<chance0>> {<<standardStart>>,{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance1>> {<<standardStart>>,{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance2>> {<<standardStart>>,{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance3>> {<<standardStart>>,{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance4>> {<<standardStart>>,{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
# Speed
<<chance0>> {<<standardStart>>,{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance1>> {<<standardStart>>,{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance2>> {<<standardStart>>,{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance3>> {<<standardStart>>,{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance4>> {<<standardStart>>,{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
# Knockback resistance
<<chance0>> {<<standardStart>>,{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance1>> {<<standardStart>>,{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance2>> {<<standardStart>>,{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance3>> {<<standardStart>>,{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance4>> {<<standardStart>>,{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
# Damage
<<chance0>> {<<standardStart>>,{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance1>> {<<standardStart>>,{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance2>> {<<standardStart>>,{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance3>> {<<standardStart>>,{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance4>> {<<standardStart>>,{Name:"generic.attackDamage",Base:15}<<standardEnd>>};

execute unless entity @e[tag=nem_uninstall] run summon zombie_pigman ~ ~ ~ {CustomName:"\"Bait\"",CanPickUpLoot:1b};
execute unless entity @e[tag=nem_uninstall] run tp @e[type=item,distance=..<<<<amount>> - 1>>] ~ ~ ~;

execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Zombie Pigman has spread the power","italic":true,"color":"dark_red"};

advancement revoke @s only nemesis:zombie_pigman;
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_zombie_pigma=..4}] nem_zombie_pigma 1;

# Clean up
scoreboard players reset rng;
scoreboard players reset amount;
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombie_pigma;
