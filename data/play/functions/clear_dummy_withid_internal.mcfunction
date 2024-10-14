data merge entity @s {CustomName:'""',CustomNameVisible:0b, NoAI:0b, NoGravity:0b, Invulnerable:0b}
# Find the tag id of the "_dummy" tag
function anim_movement:find_tag_id {tag:"_dummy"}
# Remove the "_dummy" tag
data modify storage anim_movement:temp_setup tagId set from storage anim_movement:find_tag_id foundId
function anim_movement:remove_tag_by_id with storage anim_movement:temp_setup