scoreboard objectives add anim_movement.playing dummy
scoreboard objectives add anim_movement.playing.prev dummy
scoreboard objectives add anim_movement.playing.yes dummy
scoreboard objectives add anim_movement.playing.no dummy
scoreboard objectives add anim_movement.playing.current_frame dummy
scoreboard objectives add anim_movement.playing.start_trigger dummy
scoreboard objectives add anim_movement.playing.stop_trigger dummy
scoreboard objectives add anim_movement.playing.toggle_trigger dummy
scoreboard objectives add anim_movement.new_dummy_assigned dummy

scoreboard players set $global anim_movement.playing.yes 1
scoreboard players set $global anim_movement.playing.no 0
scoreboard players set @a anim_movement.playing.start_trigger 0
scoreboard players set @a anim_movement.playing.stop_trigger 0
scoreboard players set @a anim_movement.playing.toggle_trigger 0