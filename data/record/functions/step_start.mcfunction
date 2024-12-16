# Stop playing current trajectory
execute as @s run function play:step_stop_trigger
# Hide label of current dummy
execute as @e[tag=_dummy] if score @s anim_movement.traj_id = #player anim_movement.traj_id run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:step

# Remove chunk force load
execute as @e[tag=recording,type=armor_stand] at @s if score @s anim_movement.traj_id = #player anim_movement.traj_id run forceload remove ~ ~
# Kill recording armor stands
execute as @e[tag=recording,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run kill @s
scoreboard players set @s anim_movement.recording.count 0

execute as @s run function record:record_start_msg with storage anim_movement:storage