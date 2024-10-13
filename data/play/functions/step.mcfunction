# Store trajectory id of self into a temporary scoreboard objective
scoreboard players operation #traj anim_movement.traj_id = @s anim_movement.traj_id
# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:traj id int 1 run scoreboard players get #traj anim_movement.traj_id
# Call function for a frame of playing if previous playing status == 0 and current playing status == 1
execute as @s if score @s anim_movement.playing.prev matches 0 if score @s anim_movement.playing matches 1 run function play:step_start with storage anim_movement:traj
# Call function for a frame of playing if both previous and current playing status are 1
execute as @s if score @s anim_movement.playing.prev matches 1 if score @s anim_movement.playing matches 1 run function play:step_step
# Call function to stop playing if previous playing status == 1 and current playing status == 0
execute as @s if score @s anim_movement.playing.prev matches 1 if score @s anim_movement.playing matches 0 run function play:step_stop

# Set previous playing status as the current playing status
scoreboard players operation @s anim_movement.playing.prev = @s anim_movement.playing