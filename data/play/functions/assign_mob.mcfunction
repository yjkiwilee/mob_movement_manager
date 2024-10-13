scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Check if the current trajectory exists
scoreboard players set #temp anim_movement.traj_exists 0
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players set #temp anim_movement.traj_exists 1
# Trigger assign mob only if trajectory exists
execute if score #temp anim_movement.traj_exists matches 1 run scoreboard players set @s anim_movement.assign_mob 1
# Show warning message otherwise
execute if score #temp anim_movement.traj_exists matches 0 run tellraw @a[team=admin] ["",{"text":"Failed to assign mob due to non-existent path ID."}]