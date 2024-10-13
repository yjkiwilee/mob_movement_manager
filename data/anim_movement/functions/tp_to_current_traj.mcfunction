# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
# Call tp_to_traj function
execute as @s run function anim_movement:tp_to_traj with storage anim_movement:storage