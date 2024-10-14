# Get dummy visibility for id
$execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id matches $(id) run scoreboard players operation #temp anim_movement.recording.dummy_visibility = @s anim_movement.recording.dummy_visibility

# If dummy is visible
# Hide dummy
$execute as @e[tag=_dummy] if score @s anim_movement.traj_id matches $(id) if score #temp anim_movement.recording.dummy_visibility matches 1 run effect give @s minecraft:invisibility infinite 0 true
# Set dummy visibility to hidden
$execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id matches $(id) if score #temp anim_movement.recording.dummy_visibility matches 1 run scoreboard players set @s anim_movement.recording.dummy_visibility 0

# If dummy is hidden
# Show dummy
$execute as @e[tag=_dummy] if score @s anim_movement.traj_id matches $(id) if score #temp anim_movement.recording.dummy_visibility matches 0 run effect clear @s
# Set dummy visibility to visible
$execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id matches $(id) if score #temp anim_movement.recording.dummy_visibility matches 0 run scoreboard players set @s anim_movement.recording.dummy_visibility 1