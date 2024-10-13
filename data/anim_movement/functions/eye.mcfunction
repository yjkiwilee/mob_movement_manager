advancement revoke @s only anim_movement:eye
kill @e[type=minecraft:eye_of_ender,nbt={Item:{tag:{controlEye:1b}}}]
scoreboard players set @s anim_movement.eye_pressed 1
execute if score @s anim_movement.eye_cooldown_counter matches 1.. run scoreboard players set @s anim_movement.right_click 1
execute if score @s anim_movement.eye_cooldown_counter matches 1.. run scoreboard players set @s anim_movement.eye_cooldown_counter 0