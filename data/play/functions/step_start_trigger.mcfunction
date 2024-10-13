scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Store current player's trajectory id into NBT storage
execute store result storage anim_movement:storage id int 1 run scoreboard players get #player anim_movement.traj_id
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players set @s anim_movement.playing 1
# Print message to indicate playing
execute as @s run function play:play_start_msg with storage anim_movement:storage