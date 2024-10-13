# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get @s anim_movement.traj_id
# Print trajectory ID
function anim_movement:print_traj_id_internal with storage anim_movement:storage