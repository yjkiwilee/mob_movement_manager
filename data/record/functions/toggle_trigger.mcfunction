# Determine recording status and store negated value
execute if score @s anim_movement.recording matches 0 run scoreboard players set #temp anim_movement.recording 1
execute if score @s anim_movement.recording matches 1 run scoreboard players set #temp anim_movement.recording 0
# Store negated value
scoreboard players operation @s anim_movement.recording = #temp anim_movement.recording