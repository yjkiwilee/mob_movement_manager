scoreboard players operation @s anim_movement.traj_id = #player anim_movement.traj_id
scoreboard players operation @s anim_movement.recording.num_frames = #player anim_movement.recording.count
# scoreboard players operation @s anim_movement.recording.num_frames -= $global anim_movement.recording.step
scoreboard players set @s anim_movement.playing 0
scoreboard players set @s anim_movement.playing.current_frame 0
scoreboard players set #temp anim_movement.recording.has_dummy 0
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function record:store_traj_info
scoreboard players operation @s anim_movement.recording.has_dummy = #temp anim_movement.recording.has_dummy
scoreboard players set @s anim_movement.recording.debug_visibility 0

# Set label
setblock 0 0 0 oak_sign
data modify block 0 0 0 front_text.messages[0] set value '{"score":{"name":"#player","objective":"anim_movement.traj_id"}}'
data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]

execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run kill @s