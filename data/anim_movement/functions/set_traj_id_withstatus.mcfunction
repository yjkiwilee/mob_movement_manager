# Set current trajectory ID
$scoreboard players set @s anim_movement.traj_id $(id)
$scoreboard players set @s anim_movement.traj_id_display $(id)
# Print current trajectory ID
execute as @s run function anim_movement:print_traj_id
# Show status
function anim_movement:view_traj_status