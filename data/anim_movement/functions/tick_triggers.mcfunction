execute as @a if score @s anim_movement.recording.toggle_trigger matches 1 run function record:toggle_trigger
execute as @a if score @s anim_movement.recording.toggle_trigger matches 1 run scoreboard players set @s anim_movement.recording.toggle_trigger 0

execute as @a if score @s anim_movement.playing.start_trigger matches 1 run function play:step_start_trigger
execute as @a if score @s anim_movement.playing.start_trigger matches 1 run scoreboard players set @s anim_movement.playing.start_trigger 0

execute as @a if score @s anim_movement.playing.stop_trigger matches 1 run function play:step_stop_trigger
execute as @a if score @s anim_movement.playing.stop_trigger matches 1 run scoreboard players set @s anim_movement.playing.stop_trigger 0

execute as @a if score @s anim_movement.playing.toggle_trigger matches 1 run function play:toggle_trigger
execute as @a if score @s anim_movement.playing.toggle_trigger matches 1 run scoreboard players set @s anim_movement.playing.toggle_trigger 0

execute as @a if score @s anim_movement.assign_mob matches 1 positioned as @s run function play:assign_mob_internal
execute as @a if score @s anim_movement.assign_mob matches 1 run scoreboard players set @s anim_movement.assign_mob 0

execute as @a if score @s anim_movement.delete_traj_trigger matches 1 run function anim_movement:delete_traj_trigger
execute as @a if score @s anim_movement.delete_traj_trigger matches 1 run scoreboard players set @s anim_movement.delete_traj_trigger 0

execute as @a if score @s anim_movement.debug_toggle_trigger matches 1 run function anim_movement:toggle_debug_elem_trigger
execute as @a if score @s anim_movement.debug_toggle_trigger matches 1 run scoreboard players set @s anim_movement.debug_toggle_trigger 0

execute as @a if score @s anim_movement.toggle_dummy_visibility_trigger matches 1 run function anim_movement:toggle_dummy_visibility_trigger
execute as @a if score @s anim_movement.toggle_dummy_visibility_trigger matches 1 run scoreboard players set @s anim_movement.toggle_dummy_visibility_trigger 0