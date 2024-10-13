scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
data merge entity @e[sort=nearest,limit=1,distance=0..3,predicate=anim_movement:dummy_selection] {Tags:["dummy_new"]}
# Check if new dummy has been assigned, set temporary scoreboard objective if true
scoreboard players set #temp anim_movement.new_dummy_assigned 0
execute if entity @e[tag=dummy_new] run scoreboard players set #temp anim_movement.new_dummy_assigned 1

# If new dummy has been assigned:
# Clear existing dummy
execute if score #temp anim_movement.new_dummy_assigned matches 1 as @e[tag=dummy] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:clear_dummy_internal
# Setup new dummy
execute if score #temp anim_movement.new_dummy_assigned matches 1 as @e[tag=dummy_new] run function play:setup_dummy_internal
# Display message indicating dummy assignment
execute if score #temp anim_movement.new_dummy_assigned matches 1 run tellraw @a[team=admin] {"text":"New dummy successfully assigned."}

# If new dummy hasn't been assigned:
# Display message indicating failed assignment
execute if score #temp anim_movement.new_dummy_assigned matches 0 run tellraw @a[team=admin] {"text":"Dummy assignment failed. Check if you're sufficiently close to a mob and try again."}