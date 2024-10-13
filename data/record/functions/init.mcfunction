scoreboard objectives add anim_movement.recording dummy
scoreboard objectives add anim_movement.recording.prev dummy
scoreboard objectives add anim_movement.recording.yes dummy
scoreboard objectives add anim_movement.recording.no dummy
scoreboard objectives add anim_movement.recording.count dummy
scoreboard objectives add anim_movement.recording.i dummy
scoreboard objectives add anim_movement.recording.step dummy
scoreboard objectives add anim_movement.recording.num_frames dummy
scoreboard objectives add anim_movement.recording.toggle_trigger dummy
scoreboard objectives add anim_movement.recording.has_dummy dummy
scoreboard objectives add anim_movement.recording.debug_visibility dummy

scoreboard players set @a anim_movement.recording 0
scoreboard players set @a anim_movement.recording.prev 0
scoreboard players set $global anim_movement.recording.yes 1
scoreboard players set $global anim_movement.recording.no 0
scoreboard players set @a anim_movement.recording.count 0
scoreboard players set $global anim_movement.recording.step 1
scoreboard players set @a anim_movement.recording.toggle_trigger 0