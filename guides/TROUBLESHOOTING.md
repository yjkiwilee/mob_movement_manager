# Troubleshooting

### Mobs are disappearing when I'm far away from them.

This is likely an issue of the mobs unloading with the chunks. The issue should be solved if you run the following command at all the chunks that the mobs are in to force persistent chunk loading.

```
/forceload add ~ ~
```

**NB: When you no longer need the chunk to be persistently loaded, run the command below to remove force loading as a persistently loaded chunk could reduce performance.**

```
/forceload remove ~ ~
```

### The paths disappear from the manager menu when I'm far away from them.

This is a known issue due to the paths being unloaded with distance. Any new paths you create with the updated version of the datapack should be persistent. However, for paths already created, running the following command while they are loaded (i.e. when you're close to them) should manually add persistent loading and solve this issue.

```
/execute as @e[tag=recording,type=armor_stand] at @s run forceload add ~ ~
```

### Right clicks with the tools don't seem to register from time to time.

Although the datapack has been greatly optimised for the tools to be as responsive as possible, some lags may remain. Additionally, right-clicking while facing certain mobs and other entities (e.g. regular armor stands) may not register because some default response to right-clicking is preventing the datapack from detecting the click event. Making sure to avoid facing mobs and entities when right-clicking may help.

### A path doesn't seem to have any dummy attached to it but the path manager UI shows that there is still a dummy.

Some issues with tags used by the datapack may cause this issue. If the dummy is present in the world, starting the animation will instantly teleport the dummy mob back to the path. Otherwise, the datapack will automatically update the dummy presence status and you will see that it goes back to 0 as expected after stopping and starting the animation.

### Message feedbacks from using tools are visible to other admins and not just me.

This is largely intended, as it may help coordinate path management actions better between admins. However, an option to make other admins' messages silent may be added in the future.

### Things have gone horribly wrong and nothing in the datapack seems to work anymore.

If the inner logics of the datapack ever malfunctions in unexpected ways, it may be worth resetting the dummies and paths. See the [Advanced features](ADVANCED_FEATURES.md) document for more detail on how to do this.