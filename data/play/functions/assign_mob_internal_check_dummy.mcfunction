# Check if dummy tag is present
scoreboard players set #temp anim_movement.has_dummy_tag 0
execute if entity @s[tag=_dummy] run scoreboard players set #temp anim_movement.has_dummy_tag 1

# Add _dummy_new tag if dummy tag is not present
execute if score #temp anim_movement.has_dummy_tag matches 0 run data modify entity @s Tags append value "_dummy_new"