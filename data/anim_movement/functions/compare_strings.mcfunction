# Set example storage
$data merge storage anim_movement:temp {a:"$(a)",b:"$(b)"}
# Compare function
data modify storage anim_movement:temp to_compare set from storage anim_movement:temp a
execute store success score #temp anim_movement.compare_temp run data modify storage anim_movement:temp to_compare set from storage anim_movement:temp b
# Return 1 if two strings don't match
execute if score #temp anim_movement.compare_temp matches 1 run return 0
# Return 0 if two strings match
execute if score #temp anim_movement.compare_temp matches 0 run return 1