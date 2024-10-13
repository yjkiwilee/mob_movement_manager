# Hide undesired feedback output from commands
gamerule sendCommandFeedback false

# Create admin 'team'
team add admin
team modify admin color blue

execute as @a run scoreboard objectives remove anim_movement.right_click
execute as @a run scoreboard objectives add anim_movement.right_click dummy

scoreboard objectives add anim_movement.right_click_yes dummy
scoreboard players set $global anim_movement.right_click_yes 1

scoreboard objectives add anim_movement.assign_mob dummy
scoreboard players set @a anim_movement.assign_mob 0

scoreboard objectives add anim_movement.traj_id dummy
scoreboard objectives add anim_movement.traj_id_display dummy
scoreboard players set @a anim_movement.traj_id 0
scoreboard players set @a anim_movement.traj_id_display 0
scoreboard objectives setdisplay sidebar.team.blue anim_movement.traj_id_display

scoreboard objectives add anim_movement.traj_exists dummy

scoreboard objectives add anim_movement.dummy_id dummy
scoreboard players set @a anim_movement.dummy_id 0

scoreboard objectives add anim_movement.armorstands_visibility dummy
scoreboard players set $global anim_movement.armorstands_visibility 0

scoreboard objectives add anim_movement.labels_visibility dummy
scoreboard players set $global anim_movement.labels_visibility 1

scoreboard objectives add anim_movement.one dummy
scoreboard players set $global anim_movement.one 1

scoreboard objectives add anim_movement.delete_traj_trigger dummy
scoreboard players set @a anim_movement.delete_traj_trigger 0

scoreboard objectives add anim_movement.debug_toggle_trigger dummy
scoreboard players set @a anim_movement.debug_toggle_trigger 0

scoreboard objectives add anim_movement.tick_counter dummy
scoreboard players set $global anim_movement.tick_counter 0

scoreboard objectives add anim_movement.eye_cooldown_counter dummy
scoreboard players set @a anim_movement.eye_cooldown_counter 0

scoreboard objectives add anim_movement.eye_pressed dummy
scoreboard players set @a anim_movement.eye_pressed 0

function record:init
function play:init