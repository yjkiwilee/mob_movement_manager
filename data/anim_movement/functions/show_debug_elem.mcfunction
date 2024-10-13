# Get current player trajectory and store
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id

# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id

# Show armor stands
execute as @e[tag=recording,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run data merge entity @s {Invisible:0b}

# Make label visible on dummy mob
execute as @e[tag=dummy] if score @s anim_movement.traj_id = #player anim_movement.traj_id run data merge entity @s {CustomNameVisible:1b}

execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function anim_movement:show_debug_elem_internal

# Print the associated message
function anim_movement:show_debug_elem_msg with storage anim_movement:storage