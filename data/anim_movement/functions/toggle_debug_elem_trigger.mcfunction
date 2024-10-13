# Call either show_debug_elem or hide_debug_elem depending on the debug visibility of the trajectory
# Get trajectory id
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Store current debug visibility
execute store result score #traj anim_movement.recording.debug_visibility as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players get @s anim_movement.recording.debug_visibility
# Call show_debug_elem if status is 0
execute if score #traj anim_movement.recording.debug_visibility matches 0 run function anim_movement:show_debug_elem
# Call hide_debug_elem if status is 1
execute if score #traj anim_movement.recording.debug_visibility matches 1 run function anim_movement:hide_debug_elem