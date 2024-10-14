# Check if dummy exists & update score
scoreboard players set #temp anim_movement.recording.has_dummy 0
execute as @e[tag=_dummy] if score @s anim_movement.traj_id = #traj anim_movement.traj_id run scoreboard players set #temp anim_movement.recording.has_dummy 1
execute as @e[tag=store_traj] if score @s anim_movement.traj_id = #traj anim_movement.traj_id run scoreboard players operation @s anim_movement.recording.has_dummy = #temp anim_movement.recording.has_dummy
# If dummy doesn't exist, halt playing
# execute if score @s anim_movement.recording.has_dummy matches 0 run scoreboard players set @s anim_movement.playing 0
# $execute if score @s anim_movement.recording.has_dummy matches 0 run tellraw @a[team=admin] ["",{"text":"Failed to play path $(id) due to missing dummy."}]