# Increment current trajectory id by one
scoreboard players add @s anim_movement.traj_id 1
scoreboard players add @s anim_movement.traj_id_display 1
# Print current trajectory ID
execute as @s run function anim_movement:print_traj_id