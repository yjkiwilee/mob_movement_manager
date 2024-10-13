# Set the debug visibility of the trajectory as 1
execute as @s if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players set @s anim_movement.recording.debug_visibility 1
execute as @s if score @s anim_movement.traj_id = #player anim_movement.traj_id run data merge entity @s {Invisible:0b,CustomNameVisible:1b}