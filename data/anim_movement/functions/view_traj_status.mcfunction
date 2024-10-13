# Store current player trajectory id
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Store it in storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
# Print guide header UI
function anim_movement:view_traj_status_internal_guide with storage anim_movement:storage
# Run view_traj_status_internal for all armorstands with the store_traj tag
execute as @e[tag=store_traj] run function anim_movement:view_traj_status_internal