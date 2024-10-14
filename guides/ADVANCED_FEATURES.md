# Advanced features

## Remotely managing dummies using NBT tags

If a target mob you wish to assign to a path has a special **NBT tag**, a function within the datapack can be used to remotely assign it to a certain path.

For example, if you are assigning a mob with a tag `special_tag` to **path number 2**, you can follow these steps:

1. **Select path number 2** using either the Previous/next path tools or the path manager UI
2. Execute this command to link the mob to the path:
```
/function play:assign_mob_remote {tag:"special_tag"}
```

The way this command works is identical to the **Select dummy tool**, but it uses the tag rather than proximity to specify the mob to be assigned to the path.

## Manually set the current path ID

The current selected path ID can be set manually using the following command. This is an example if you wish to switch to path number 10. *Please note that the path ID must be a whole number and cannot be a string.*

```
/function anim_movement:set_traj_id {id:10}
```

## Teleport to a dummy

You can also teleport to the exact location of a dummy using a command, which can be useful for paths that stretch over long distances. For example, to **teleport to a dummy on path number 3**, you can run:

```
/function anim_movement:tp_to_dummy {id:3}
```

## Reset all dummies & paths

All dummies & paths assigned/created by this datapack can be reset (removed) using the command below. This will clear all the paths, and return all dummies back to their normal state.

```
/function anim_movement:reset
```

