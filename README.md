# Mob movement manager datapack

This datapack for **Minecraft 1.20.2** is written to allow movement of mobs to be manipulated and managed.

# Installation & setup

## 1. Downloading the files

To download the contents of this repository as a .zip file, click on '**Code**' and then '**Download ZIP**'. When you decompress the ZIP file, you will get a folder with the following structure:

```
mob_movement_manager-master
∟ data
∟ pack.mcmeta
∟ ... (other non-essential files)
```

You may delete all the files/folders except for `data` and `pack.mcmeta`, as those two are the only requirements for this datapack to function.

## 2. Installing the datapack

### 2.1. Singleplayer

Navigate to the folder of the Minecraft save you want to apply the datapack to. Locate the `datapacks` folder and place the datapack folder inside it. Re-name the `mob_movement_manager-master` folder to just `mob_movement_manager`.

As a result, the contents of the `datapacks` folder should look like the following:

```
datapacks
∟ mob_movement_manager
  ∟ data
  ∟ pack.mcmeta
```

### 2.2. Multiplayer


Navigate to the server folder and locate the folder of the world you want to install the datapack to (default: `world`). Inside the world folder, locate the `datapacks` folder and copy in the datapack folder inside it.

As a result, the contents of the `datapacks` folder should look like the following:

```
datapacks
∟ mob_movement_manager
  ∟ data
  ∟ pack.mcmeta
```

## 3. Testing the datapack

Now open the world / server in Minecraft and run the `/reload` command to re-load the datapacks. To test the installation, run the following command:

```
/function anim_movement:test
```

If you see a message like the following, congratulations! The installation is complete.

<img src="git/imgs/readme_1.png" width="500">

# Further resources

To find out **how to use the core features of this datapack**, see the [Getting Started](guides/GETTING_STARTED.md) guide.

**If you are familiar with commands**, you can do more with the datapack by directly calling some functions within the datapack. To learn more, see the [Advanced Features](guides/ADVANCED_FEATURES.md) document.

For a table of functions contained within this datapack (which may be useful for those intending to do further development on this datapack), please see the [List of Functions](guides/LIST_OF_FUNCTIONS.md) document (WIP!).