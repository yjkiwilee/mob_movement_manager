# Set own trajectory ID
scoreboard players operation @s anim_movement.traj_id = #assign_mob_remote anim_movement.traj_id
# Check that the target is not a dummy
function play:assign_mob_internal_check_dummy
scoreboard players set #temp anim_movement.new_dummy_assigned 0
execute if entity @e[tag=_dummy_new] run scoreboard players set #temp anim_movement.new_dummy_assigned 1
# If new dummy has been assigned:
# Clear existing dummy
execute if score #temp anim_movement.new_dummy_assigned matches 1 as @e[tag=_dummy] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:clear_dummy_internal
# Setup new dummy
execute if score #temp anim_movement.new_dummy_assigned matches 1 as @e[tag=_dummy_new] run function play:setup_dummy_internal
# Display message indicating dummy assignment
execute if score #temp anim_movement.new_dummy_assigned matches 1 run tellraw @a[team=admin] {"text":"New dummy successfully assigned."}

# If new dummy hasn't been assigned:
# Display message indicating failed assignment
execute if score #temp anim_movement.new_dummy_assigned matches 0 run tellraw @a[team=admin] {"text":"Dummy assignment failed. Make sure that your target is not already a dummy."}