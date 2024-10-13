# Store current player trajectory
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Determine whether the trajectory is playing (toggle_internal will store the result in #player)
execute store result score #temp anim_movement.playing as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players get @s anim_movement.playing
# Trigger start or stop accordingly
execute as @s if score #temp anim_movement.playing matches 0 run function play:step_start_trigger
execute as @s if score #temp anim_movement.playing matches 1 run function play:step_stop_trigger