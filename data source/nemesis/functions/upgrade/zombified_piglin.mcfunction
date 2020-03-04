${var amount 5}
${var maxRange 64}

# The amount of different outcomes (index + 1)
# This amount -1 should also be at the bottom at # Reset...
scoreboard players set amount nem_num <<amount>>;

# Create a random number between 0 and the amount: [0, amount>
execute store result score rng nem_num run loot spawn ~ ~ ~ loot nemesis:rng;
scoreboard players operation rng nem_num %= amount nem_num;

# The player will go through each Zombified Piglin before a random one is summoned
scoreboard objectives add nem_zombified_pi dummy "Nemesis Zombified Piglin Progress";
scoreboard players add @s nem_zombified_pi 0;
execute if score @s nem_zombified_pi < amount nem_num run scoreboard players operation rng nem_num = @s nem_zombified_pi;

${var chance0 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 0 as @e[type=minecraft:zombified_piglin,sort=random,limit=1,distance=..<<maxRange>>] run data merge entity @s}
${var chance1 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 1 as @e[type=minecraft:zombified_piglin,sort=random,limit=2,distance=..<<maxRange>>] run data merge entity @s}
${var chance2 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 2 as @e[type=minecraft:zombified_piglin,sort=random,limit=3,distance=..<<maxRange>>] run data merge entity @s}
${var chance3 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 3 as @e[type=minecraft:zombified_piglin,sort=random,limit=4,distance=..<<maxRange>>] run data merge entity @s}
${var chance4 execute unless entity @e[tag=nem_uninstall] if score rng nem_num matches 4 as @e[type=minecraft:zombified_piglin,sort=random,limit=5,distance=..<<maxRange>>] run data merge entity @s}

${var standardStart PersistenceRequired:1b,Attributes:[{Name:"generic.followRange",Base:64},}
${var standardEnd ]}

# Knockback
<<chance0>> {<<standardStart>>{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance1>> {<<standardStart>>{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance2>> {<<standardStart>>{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance3>> {<<standardStart>>{Name:"generic.followRange",Base:64}<<standardEnd>>};
<<chance4>> {<<standardStart>>{Name:"generic.followRange",Base:64}<<standardEnd>>};
# Max Health
<<chance0>> {<<standardStart>>{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance1>> {<<standardStart>>{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance2>> {<<standardStart>>{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance3>> {<<standardStart>>{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
<<chance4>> {<<standardStart>>{Name:"generic.maxHealth",Base:40}<<standardEnd>>,Health:40};
# Speed
<<chance0>> {<<standardStart>>{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance1>> {<<standardStart>>{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance2>> {<<standardStart>>{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance3>> {<<standardStart>>{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
<<chance4>> {<<standardStart>>{Name:"generic.movementSpeed",Base:0.4}<<standardEnd>>};
# Knockback resistance
<<chance0>> {<<standardStart>>{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance1>> {<<standardStart>>{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance2>> {<<standardStart>>{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance3>> {<<standardStart>>{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
<<chance4>> {<<standardStart>>{Name:"generic.knockbackResistance",Base:1}<<standardEnd>>};
# Damage
<<chance0>> {<<standardStart>>{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance1>> {<<standardStart>>{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance2>> {<<standardStart>>{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance3>> {<<standardStart>>{Name:"generic.attackDamage",Base:15}<<standardEnd>>};
<<chance4>> {<<standardStart>>{Name:"generic.attackDamage",Base:15}<<standardEnd>>};

execute unless entity @e[tag=nem_uninstall] run summon zombified_piglin ~ ~ ~ {CustomName:"\"Bait\"",CanPickUpLoot:1b};
execute unless entity @e[tag=nem_uninstall] run tp @e[type=item,distance=..<<<<amount>> - 1>>] ~ ~ ~;

execute unless entity @e[tag=nem_uninstall] run tellraw @s {"text":"The Zombified Piglin has spread the power","italic":true,"color":"dark_red"};

advancement revoke @s only nemesis:zombified_piglin;
execute unless entity @e[tag=nem_uninstall] run scoreboard players add @s[scores={nem_zombified_pi=..4}] nem_zombified_pi 1;

# Clean up
scoreboard players reset rng;
scoreboard players reset amount;
execute if entity @e[tag=nem_uninstall] run scoreboard objectives remove nem_zombified_pi;
