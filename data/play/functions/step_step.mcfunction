scoreboard players operation #traj anim_movement.playing.current_frame = @s anim_movement.playing.current_frame

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["playing_new"]}

execute as @e[tag=recording,type=armor_stand] if score @s anim_movement.traj_id = #traj anim_movement.traj_id if score @s anim_movement.recording.i = #traj anim_movement.playing.current_frame run tp @e[tag=playing_new,limit=1] @s

execute as @e[tag=dummy] if score @s anim_movement.traj_id = #traj anim_movement.traj_id run tp @s @e[tag=playing_new,limit=1,type=armor_stand]

kill @e[tag=playing_new,type=armor_stand]

scoreboard players operation @s anim_movement.playing.current_frame += $global anim_movement.recording.step

execute if score @s anim_movement.playing.current_frame > @s anim_movement.recording.num_frames run scoreboard players set @s anim_movement.playing.current_frame 0