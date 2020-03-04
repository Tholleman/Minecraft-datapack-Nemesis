# Nemesis Design

All mobs have a similar strategy of attacking.
This gives the player a vague idea of what they will be dealing with and how to counteract it.

Every mob will have variations from it's theme.
A strategy is assigned to give a idea for the direction.
A mob should not have vastly different ways of attacking to avoid frustrating the player with complete randomness.

Every variation will note at least 3 things:
1. A description of how it attacks/appearance or whatever else is applicable
2. An experience requirement.
    - `None` if the behaviour of the mob could be inferred from the mob itself and common sense (i.e. Creepers explode, use a bow)
    - `Learned` if the attack strategy could be surprising at first but dealt with after seeing it
    - `Battle` if the attack strategy is inherently difficult
3. A difficulty indicator of `Easy`, `Normal`, or `Hard`

## Plains `Easy`
Most from the plains should be simple to fight overall.
This makes the introduction to this datapack easier.
Some of the mobs have more difficult variations later on but they all start of relatively easy

### Creeper `Easy`
| Subject  | Creeper |
| -------- | --- |
| Theme    | Camouflage or explosions |
| Notes    | One funny side effect of creepers with potion effects is that when they explode, they leave a lingering effect. This means that after surviving an explosion, the player could benefit from the creeper. |
| Strategy | From a distance with a bow |

1. Doubled creeper
    - This creeper will blow up with twice the power but also twice the fuse duration.
    - Lingers with `Health Boost`
    - Experience requirement `none`
    - Difficulty: `Easy`

2. Stormy
    - Invisible but powered so only the blue charge can be seen
    - Lingers with `Invisibility`
    - Experience requirement `none`
    - Difficulty: `Easy`

3. Disguised
    - Invisible creeper with a bat on its head.
    - Lingers with `Invisibility`
    - Experience requirement `Learned`
    - Difficulty: `Easy`

4. Missile
    - 3 flaming creepers with high speed and low fuse time
    - Lingers with `Fire Resistance`
    - Experience requirement `Learned`
    - Difficulty: `Normal`

### Phantom `Normal`
| Subject  | Phantom |
| -------- | --- |
| Theme    | Nightmare |
| Notes    | It takes a while before the phantoms start to escalate. This is to balance the later random factor but also gives the player a false sense of security which makes the later nightmares even more effective |
| Strategy | Block with a shield and attack after they retreat |

1. Greater Phantom
    - A larger than average phantom
    - Size: 3
    - Experience requirement: `None`
    - Difficulty: `Normal`

2. Nightmare Phantom
    - A very large phantom
    - Size: 10
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Invisible Phantom
    - A group of 5 invisible phantoms
    - Experience requirement: `Learned`
    - Difficulty: `Normal`

4. Phantom King
    - An immense phantom
    - Size: 20
    - Experience requirement: `None`
    - Difficulty: `Normal`

5. a different kind of Phantom
    - 2 Vex
    - Experience requirement: `Battle`
    - Difficulty: `Hard`

### Skeleton `Easy`

| Subject  | Skeleton |
| -------- | --- |
| Theme    | Imitate a different mob |
| Notes    | Lost its identity long ago and assumes a new one. Once it has killed again with the new identity, the skeleton will upgrade to a form from the mob it was imitating |
| Strategy | Stay out of reach and deal damage with a bow |

1. Zombie
    - Has gear like a zombie and no weapon
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Stray
    - Is literally just a stray
    - Experience requirement: `None`
    - Difficulty: `Easy`

3. Blaze
    - Invisible but on fire with a flame bow
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Wither Skeleton
    - Wither skeleton head and a stone sword
    - Experience requirement: `None`
    - Difficulty: `Easy`

### Spider `Easy`
have a positive effect
| Subject  | Spider |
| -------- | --- |
| Theme    | Gain a beneficial potion effect or carry someone |
| Notes    |  |
| Strategy | Usual spider tactics |

1. Light Spider
    - Effects: `Glowing`, and `Slow Falling`
    - Experience requirement: `None`
    - Difficulty `Easy`

2. Skitter
    - Movement speed is increased
    - Experience requirement: `None`
    - Difficulty `Easy`

3. Chameleon Spider
    - Effects: `Invisibility`
    - Experience requirement: `None`
    - Difficulty `Easy`

4. Leeching Spider
    - Effects: `Regenaration`
    - Experience requirement: `None`
    - Difficulty `Easy`

5. Allied Spider
    - Has a skeleton on its back
    - Experience requirement: `Learned`
    - Difficulty `Easy`

6. Infested Spider
    - Has two Cave Spiders on its back
    - Experience requirement: `Learned`
    - Difficulty `Easy`

### Witch `Normal`
| Subject  | Witch |
| -------- | --- |
| Theme    | Curse the player upon death |
| Notes    | Has a lingering potion that hinders the player but not other Witches |
| Strategy | Run after killing the Witch |

1. Hunger
2. Weakness
3. Mining Fatigue
4. Nausea
5. Blindness
6. Long term curse
    - Effects: `Glowing`, `Bad Luck`, and `Bad Omen`

### Zombie `Easy`
| Subject  | Zombie |
| -------- | --- |
| Theme    | Gain armor |
| Notes    | They can all break doors, pick up gear, and they all have a reinforcement chance of 100% |
| Strategy | Deal damage and walk backwards |

1. Patient 0
    - Has no gear but can pick some up
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Scavenger
    - Has some random leather, iron, and gold gear
    - Experience requirement: `None`
    - Difficulty: `Easy`

3. Flaunter
    - Has full gold gear
    - Experience requirement: `None`
    - Difficulty: `Easy`

4. Pest
    - Baby with chainmail gear and an iron axe 
    - Experience requirement: `None`
    - Difficulty: `Normal`

5. Tank
    - Slow with full iron and a ton of health 
    - Experience requirement: `None`
    - Difficulty: `Normal`

### Zombie Villager `Normal`
| Subject  | Zombie Villager |
| -------- | --- |
| Theme    | Takes up a profession and has attacks around it |
| Notes    | Just like the Zombie, they can all break doors, pick up gear, and they all have a reinforcement chance of 100% |
| Strategy | Standard zombie hord |

1. Nitwit
    - No gear or specialty
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Farmer
    - A iron hoe with knockback
    - Experience requirement: `None`
    - Difficulty: `Easy`

3. Librarian
    - A book with an effective combat enchantment (fire aspect, knockback, or sharpness)
    - Experience requirement: `None`
    - Difficulty: `Easy`

4. Butcher
    - Leather gear and an iron axe
    - Experience requirement: `None`
    - Difficulty: `Easy`

5. Priest
    - Lingering damage potions to heal the others and hurt the player
    - Experience requirement: `Learned`
    - Difficulty: `Easy`

6. Blacksmith
    - A full set of enchanted iron gear
    - Experience requirement: `Battle`
    - Difficulty: `Normal`

7. Village
    - All the zombie villagers in different numbers
    - Experience requirement: `None`
    - Difficulty: `Hard`

## Tundra `Normal`
### Stray `Normal`
| Subject  | Stray |
| -------- | --- |
| Theme    | Avoids melee as much as possible |
| Notes    | Even though a bow duel is preferred, these battles are not easy |
| Strategy | Bow combat with a lot of ammo |

1. Fast
    - Faster stray with a punch bow
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Projectile protection
    - Well protected stray with an extreme punch bow
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Rabbit
    - A normal stray on top of a Rabbit
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Bat
    - A normal stray on top of a Bat
    - Experience requirement: `None`
    - Difficulty: `Normal`

5. Killer Rabbit
    - A normal stray on top of a killer Rabbit
    - Experience requirement: `Learned`
    - Difficulty: `Easy`

## Dessert `Normal`
### Husk `Normal`
| Subject  | Husk |
| -------- | --- |
| Theme    | A small group that help each other upon death |
| Notes    | The group always consists of 4 husks. Most of the effects are also positive for the player but not all |
| Strategy | Separate the Husks before killing them |

1. Resistance
2. Speed
3. Strength
4. Instant damage
5. Mix of all of the above

## Sea `Hard`
### Drowned `Hard`
| Subject  | Drowned |
| -------- | --- |
| Theme    | Creatures that live in the sea |
| Notes    | Most of the drowned have frost walker boots to protect them from magma blocks |
| Strategy | Lure them into a smaller confinement to kill them |

1. Angler Fish
    - Invisible with a lantern on its head
    - Experience requirement: `Learned`
    - Difficulty: `Normal`

2. Diver
    - Drowned with some leather gear
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Bodyguard
    - chainmail gear and knockback resistance
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Triton
    - chainmail gear, trident and knockback resistance
    - Accompanied by bodyguards
    - Experience requirement: `None`
    - Difficulty: `Hard`

5. Triton + magma
    - Same triton and bodyguards but magma is distributed
    - Experience requirement: `Learned`
    - Difficulty: `Hard`

## Underground `Normal`
This category is for mobs that mainly/only spawn underground

### Cave Spider `Easy`
| Subject  | Cave Spider |
| -------- | --- |
| Theme    | Imitation of a spider but in larger numbers |
| Notes    | The cave spiders spawn in groups of 3. |
| Strategy | Bow |

Since the types are the same as the spider I will only quickly mention them
1. Light Spider
2. Skitter
3. Leeching Spider
4. Chameleon Spider
5. Imitator
    - Has a skeleton as passenger
6. Innovator
    - Has a wither skeleton as passenger

### Silverfish `Normal`
| Subject  | Silverfish |
| -------- | --- |
| Theme    | Mice |
| Notes    | All Silverfish have a lot more health |
| Strategy | Stand a bit higher and hit them |

1. Zipper
    - A faster silverfish
    - Experience requirement: `None`
    - Difficulty: `Normal`

2. Burrower
    - A slow silverfish with knockback resistance
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Infestation
    - A lot of silverfish
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Infestation + blocks
    - A lot of silverfish and surrounding blocks get infested
    - Experience requirement: `Learned`
    - Difficulty: `Normal`

### Slime `Normal`
| Subject  | Slime |
| -------- | --- |
| Theme    | Variations on slime, Usually kind to each other |
| Notes    |  |
| Strategy | Poor lava/use a bow |

1. Stacked Slime
    - A large slime with smaller slimes on top
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Big Slime
    - A very large slime
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Absorbing Slime
    - Picks up items
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Loving father
    - Drops a potion upon death to help the children
    - Experience requirement: `Learned`
    - Difficulty: `Hard`

5. Burned Slime
    - Magma cube
    - Experience requirement: `None`
    - Difficulty: `Easy`

## Raid `Hard`
Dying to a raid member will result in the summoning of a different raid member.
Unlike the other mobs, the original killer will not be replaced for raid members.
    
### Pillager `Normal`
| Subject  | Pillager |
| -------- | --- |
| Theme    | Goes to Vindicator |
| Notes    |  |
| Strategy |  |

1. Wooden axe
    - Has `Speed`, and `Jump Boost`
    - Experience requirement: `None`
    - Difficulty: `Normal`

2. Stone axe
    - Faster
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Iron axe
    - Some knockback resistance
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Golden axe
    - Fire aspect on the axe
    - Experience requirement: `None`
    - Difficulty: `Normal`

5. Diamond axe
    - Slower
    - Patrol leader
    - Experience requirement: `None`
    - Difficulty: `Normal`

### Vindicator `Hard`
| Subject  | Vindicator |
| -------- | --- |
| Theme    | Goes to a Ravager |
| Notes    |  |
| Strategy |  |

1. Double Ravager
    - 2 ravagers
    - Experience requirement: `None`
    - Difficulty: `Hard`

2. Flaming Ravager
    - A ravager on fire with a fire aspect wooden sword
    - Experience requirement: `None`
    - Difficulty: `Hard`

3. Pillager rider
    - Ravager with a pillager on top
    - Experience requirement: `None`
    - Difficulty: `Hard`

4. Vindicator rider
    - Ravager with 2 vindicators on top
    - Experience requirement: `Learned`
    - Difficulty: `Hard`

5. Evoker leader rider
    - Ravager with an evoker patrol leader on top
    - Experience requirement: `None`
    - Difficulty: `Hard`

### Ravager `Easy`
| Subject  | Ravager |
| -------- | --- |
| Theme    | Goes to a vindicator |
| Notes    |  |
| Strategy |  |

Summons between 1 and 3 evokers.
There is also a chance of a illusioner in addition to the 3 evokers.

### Evoker `Easy`
| Subject  | Evoker |
| -------- | --- |
| Theme    | Goes back to a pillager |
| Notes    |  |
| Strategy |  |

1. 3 normal pillagers
2. 2 Enchanted pillagers
    - `Quick Charge`, and `Piercing`

3. 1 Strong pillager leader
    - More health
    - Knockback resistance
    - Patrol leader
    - `Multishot`, and `Quick Charge`

### Vex `Easy`
| Subject  | Vex |
| -------- | --- |
| Theme    | Summons an pillager patrol leader |
| Notes    |  |
| Strategy |  |

### Illusioner
| Subject  | Illusioner |
| -------- | --- |
| Theme    | Summons an Evoker with a potion effect |
| Notes    |  |
| Strategy |  |

1. Fire resistance
2. Absorption
3. Regeneration
4. Speed
5. Invisibility

## Nether `Normal`
### Zombie Pigman `Normal`
| Subject  | Zombie Pigman |
| -------- | --- |
| Theme    | Buff other pigman and leave bait |
| Notes    | The bait picks up loot from the player |
| Strategy |  |

Increase the attribute of up to 5 zombie pigman per attribute.
- Knockback resistance
- Max Health
- Speed
- Knockback resistance
- Damage

### Blaze `Normal`
| Subject  | Blaze |
| -------- | --- |
| Theme    | Some form of demon |
| Notes    |  |
| Strategy |  |

1. Subjugator
    - Blaze riding a wither skeleton
    - Experience requirement: `none`
    - Difficulty: `Normal`
    
2. Speed demon
    - 4 blazes with speed
    - Experience requirement: `none`
    - Difficulty: `Normal`

3. Large collection
    - 8 blazes
    - Experience requirement: `none`
    - Difficulty: `Normal`

4. Pyromaniac
    - Throws lava around when it spawns
    - Experience requirement: `Learned`
    - Difficulty: `Normal`

5. Large demon
    - a blaze with a few blazes on top with a magma cube on top of that
    - Experience requirement: `Battle`
    - Difficulty: `Hard`

### Ghast `Normal`
| Subject  | Ghast |
| -------- | --- |
| Theme    | Some form of ghost |
| Notes    |  |
| Strategy | Bow or return to sender |

1. Immortal
    - Has a ton of health
    - Can realistically only be killed by returning 1 fireball
    - Experience requirement: `Learned`
    - Difficulty: `Easy`
    
2. Abundant
    - A group of ghasts
    - Experience requirement: `None`
    - Difficulty: `Easy`

3. Undetectable
    - Silent (Except when attacking)
    - Invisible
    - Experience requirement: `Battle`
    - Difficulty: `Normal`

4. The Gate
    - Has wither skeletons inside of it that float down once the ghast is killed
    - Experience requirement: `Learned`
    - Difficulty: `Normal`

### Magma Cube `Easy`
| Subject  | Magma Cube |
| -------- | --- |
| Theme    | Selfish |
| Notes    |  |
| Strategy |  |

1. Reverse pyramid
    - A stack where the smallest carry the larger cubes
    - Don't make it political
    - Experience requirements: `None`
    - Difficulty: `Easy`

2. Revenge potion
    - 5 medium cubes that drop a bad splash potion upon death
    - These potions will also hinder other cubes
    - Experience requirements: `Learned`
    - Difficulty: `Easy`

3. Looters
    - A large number of cubes that can pick up loot
    - Experience requirements: `Learned`
    - Difficulty: `Normal`

### Wither Skeleton `Hard`
| Subject  | Wither Skeleton |
| -------- | --- |
| Theme    | Some form of guard |
| Notes    | I've recently gotten into the world of warhammer 40k |
| Strategy |  |

1. Stationed guard
    - A stationary wither skeleton with a strong bow
    - Experience requirement: `Learned`
    - Difficulty: `Easy`

2. Adaptus Astartes
    - Wither skeleton in full iron gear
    - Experience requirement: `None`
    - Difficulty: `Normal`

3. Adaptus Custodes
    - Wither skeleton in full golden gear
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Captain-General
    - Wither skeleton in full diamond gear and a wither skull
    - Experience requirement: `None`
    - Difficulty: `Hard`

## End `Normal`
### Enderman `Normal`
| Subject  | Enderman |
| -------- | --- |
| Theme    | Breaks the player down into 10 endermites that can pick up loot |
| Notes    |  |
| Strategy |  |

### Endermite `Normal`
| Subject  | Endermite |
| -------- | --- |
| Theme    | Summon mobs from a group (Except sea) |
| Notes    |  |
| Strategy |  |

1. Tundra
    - A stray
    - Experience requirement: `None`
    - Difficulty: `Easy`

2. Dessert
    - A husk and a killer rabbit
    - Experience requirement: `None`
    - Difficulty: `Easy`

3. Plains
    - A Creeper, Skeleton, Spider, Witch, Zombie, and Zombie Villager
    - Experience requirement: `None`
    - Difficulty: `Normal`

4. Underground
    - A Cave Spider, Silverfish and Slime
    - Experience requirement: `None`
    - Difficulty: `Easy`

5. Nether
    - A Blaze, Magma Cube, and Wither Skeleton
    - Experience requirement: `None`
    - Difficulty: `Normal`

6. Raid
    - A Pillager, Vindicator, and Evoker
    - Experience requirement: `Battle`
    - Difficulty: `Normal`

### Shulker `Easy`
| Subject  | Shulker |
| -------- | --- |
| Theme    | Summons a mystical mob |
| Notes    |  |
| Strategy |  |

1. Endermite
2. Phantom
3. Vex

## Misc
### Rabbit `Easy`
| Subject  | Rabbit |
| -------- | --- |
| Theme    | Summons more rabbits |
| Notes    |  |
| Strategy |  |

Summons between 1 and 4 rabbits
