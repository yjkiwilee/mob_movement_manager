# Store the current traj_id
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Remove NBT from dummy
data merge entity @s {CustomName:'""',CustomNameVisible:0b, NoAI:0b, NoGravity:0b, Invulnerable:0b}
# Find the tag id of the "_dummy" tag
function anim_movement:find_tag_id {tag:"_dummy"}
# Remove the "_dummy" tag
data modify storage anim_movement:temp_setup tagId set from storage anim_movement:find_tag_id foundId
function anim_movement:remove_tag_by_id with storage anim_movement:temp_setup
# Update trajectory status
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:remove_dummy_and_stop