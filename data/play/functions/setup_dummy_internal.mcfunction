# Set trajectory ID of the dummy
scoreboard players operation @s anim_movement.traj_id = #player anim_movement.traj_id

# Get the current debug visibility of the trajectory
execute store result score #traj anim_movement.recording.debug_visibility as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players get @s anim_movement.recording.debug_visibility

# Set the label for the dummy
setblock 0 0 1 oak_sign
data modify block 0 0 1 front_text.messages[0] set value '{"score":{"name":"#player","objective":"anim_movement.traj_id"}}'
data modify entity @s CustomName set from block 0 0 1 front_text.messages[0]
execute if score #traj anim_movement.recording.debug_visibility matches 0 run data merge entity @s {CustomNameVisible:0b, NoAI:1b, NoGravity:1b, Invulnerable:1b}
execute if score #traj anim_movement.recording.debug_visibility matches 1 run data merge entity @s {CustomNameVisible:1b, NoAI:1b, NoGravity:1b, Invulnerable:1b}

# Find the tag id of the "_dummy_new" tag
function anim_movement:find_tag_id {tag:"_dummy_new"}
# Remove the "_dummy_new" tag
data modify storage anim_movement:temp_setup tagId set from storage anim_movement:find_tag_id foundId
function anim_movement:remove_tag_by_id with storage anim_movement:temp_setup
# Append _dummy tag
data modify entity @s Tags append value "_dummy"

# Set the 'has_dummy' scoreboard value of the corresponding store_traj armorstand as 1
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run scoreboard players set @s anim_movement.recording.has_dummy 1