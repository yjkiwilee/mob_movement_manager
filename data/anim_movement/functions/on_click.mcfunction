# msg @s Click detected!

# Decrement selected trajectory id by 1
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"decrement_traj_id"}}}] run function anim_movement:decrement_traj_id
# Increment selected trajectory id by 1
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"increment_traj_id"}}}] run function anim_movement:increment_traj_id
# Start/stop recording
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"toggle_recording"}}}] run function record:toggle
# Start/stop playing
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"toggle_playing"}}}] run function play:toggle
# Delete current trajectory
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"delete_traj"}}}] run function anim_movement:delete_traj
# Assign dummy mob
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"select_dummy"}}}] run function play:assign_mob
# Clear dummy mob
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"clear_dummy"}}}] run function play:clear_dummy
# Show/hide armorstands & labels
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"toggle_debug_elem"}}}] run function anim_movement:toggle_debug_elem
# Teleport to the current trajectory
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"tp_to_traj"}}}] run function anim_movement:tp_to_current_traj
# View trajectory statuses
execute as @s if entity @s[nbt = {SelectedItem:{tag:{ControlID:"view_traj_status"}}}] run function anim_movement:view_traj_status