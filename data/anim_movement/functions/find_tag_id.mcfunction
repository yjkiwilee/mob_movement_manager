$data modify storage anim_movement:find_tag_id query set value $(tag)
data modify storage anim_movement:find_tag_id tagList set from entity @s Tags
scoreboard players set #temp anim_movement.find_tag_i 0
function anim_movement:find_tag_id_internal