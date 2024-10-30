# Extract the current trajectory ID
scoreboard players operation #assign_mob_remote anim_movement.traj_id = @s anim_movement.traj_id
# Call assign_mob_remote_internal function, passing the mobs selected by the specified tag
$execute as @e[tag=$(tag),sort=nearest] run function play:assign_mob_remote_internal