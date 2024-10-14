# Put NBT tag to dummy with the corresponding id
$execute as @e[tag=_dummy] if score @s anim_movement.traj_id matches $(id) run data modify entity @s Tags prepend value "tp_target"
# Teleport player to target
tp @s @e[tag=tp_target,limit=1]
# Find the tag id of the "tp_target" tag
function anim_movement:find_tag_id {tag:"tp_target"}
# Remove the "tp_target" tag
data modify storage anim_movement:temp_setup tagId set from storage anim_movement:find_tag_id foundId
function anim_movement:remove_tag_by_id with storage anim_movement:temp_setup
# Show message
$execute as @a if score @s anim_movement.is_admin matches 1 run tellraw @s {"text":"Teleported to dummy id $(id)"}