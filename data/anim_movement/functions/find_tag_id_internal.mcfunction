# Check whether trying to access tagList[0] succeeds; failure implies the end of the loop
execute store success score #temp2 anim_movement.list_not_empty run data get storage anim_movement:find_tag_id tagList[0]
# Set up storage
data modify storage anim_movement:find_tag_id_internal a set from storage anim_movement:find_tag_id query
data modify storage anim_movement:find_tag_id_internal b set value ""
data modify storage anim_movement:find_tag_id_internal b set from storage anim_movement:find_tag_id tagList[0]
# Compare the query string and the first element of the list
execute store result score #temp2 anim_movement.compare_temp run function anim_movement:compare_strings with storage anim_movement:find_tag_id_internal

# If they match, set the found id as the counter
execute if score #temp2 anim_movement.compare_temp matches 1 run execute store result storage anim_movement:find_tag_id foundId int 1 run scoreboard players get #temp anim_movement.find_tag_i
# ... and set return as success
execute if score #temp2 anim_movement.compare_temp matches 1 run scoreboard players set #temp anim_movement.tag_id_found 1

# If they don't match, check whether list has run out. If it has, set return as failure
execute if score #temp2 anim_movement.compare_temp matches 0 if score #temp2 anim_movement.list_not_empty matches 0 run scoreboard players set #temp anim_movement.tag_id_found 0

# If the strings don't match and the list hasn't run out, delay setting return value and call own function recursively
scoreboard players add #temp anim_movement.find_tag_i 1
data remove storage anim_movement:find_tag_id tagList[0]
execute if score #temp2 anim_movement.compare_temp matches 0 if score #temp2 anim_movement.list_not_empty matches 1 run function anim_movement:find_tag_id_internal