# Set temp scoreboard objective
$scoreboard players set #player anim_movement.traj_id $(id)
# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
# Clear dummy
$function play:clear_dummy_withid {id:$(id)}
# Remove chunk force loading
execute as @e[tag=recording,type=armor_stand] run forceload remove ~ ~
# Delete all recording armorstands
execute as @e[tag=recording,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run kill @s
# Delete all trajectory-storing armorstands
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run kill @s
# Add chunk force loading
execute as @e[tag=recording,type=armor_stand] run forceload add ~ ~
# Show message
function anim_movement:delete_traj_msg with storage anim_movement:storage
# Show status
function anim_movement:view_traj_status