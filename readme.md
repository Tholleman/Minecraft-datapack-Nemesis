# Nemesis
A datapack that makes death more exciting and challenging.

## Gameplay
Almost every mob has a variation it can achieve after killing the player. These variations start of easy but gradually get harder if the player dies to that type of mob often. Once the player has seen every variation of that mob, the variations will be randomly chosen.

The player will be warned that the mob has gotten stronger with a message that only they will see. The message will not contain information about which variation the mob has gotten.

## Compatibility
### Scoreboard objectives
This datapack tries to stay compatible with other datapacks by prefixing its scoreboard objectives with `nem_`. The objectives are `nem_num` and 1 for each mob (i.e. `nem_zombie`). If the name of a mob is too long it will be cut of at the 16 character limit (i.e. `nem_wither_skele`).

### Tags
This datapack uses 2 tags: a tag to remove entities `nemesis` and a tag to remove scoreboard objectives `nem_uninstall`. As long as these are not used, everything should work as expected.

## Multiplayer
This datapack should work for multiplayer.

## Uninstalling
To get rid of the scoreboard objectives you should call `/function nemesis:uninstall`. After that you can remove the datapack from the datapacks folder.
