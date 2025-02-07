scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
execute as @e[tag=_dummy] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:clear_dummy_withid_internal
# Update trajectory status
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:remove_dummy_and_stop
# Print message
function play:clear_dummy_msg with storage anim_movement:storage