# Store current player's trajectory id into a temporary scoreboard objective
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
# Call function to start recording if previous recording status == 0 and current recording status == 1
execute as @s if score @s anim_movement.recording.prev matches 0 if score @s anim_movement.recording matches 1 at @s run function record:step_start
# Call function for a frame of recording if both previous and current recording status are 1
execute as @s if score @s anim_movement.recording.prev matches 1 if score @s anim_movement.recording matches 1 at @s run function record:step_step
# Call function to stop recording if previous recording status == 1 and current recording status == 0
execute as @s if score @s anim_movement.recording.prev matches 1 if score @s anim_movement.recording matches 0 at @s run function record:step_stop

# Set previous recording status as the current recording status
scoreboard players operation @s anim_movement.recording.prev = @s anim_movement.recording