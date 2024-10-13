# Decrement current trajectory id by one
scoreboard players operation @s anim_movement.traj_id -= $global anim_movement.one
scoreboard players operation @s anim_movement.traj_id_display -= $global anim_movement.one
# Print current trajectory ID
execute as @s run function anim_movement:print_traj_id
# Show status
function anim_movement:view_traj_status