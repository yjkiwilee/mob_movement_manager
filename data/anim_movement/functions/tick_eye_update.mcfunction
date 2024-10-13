execute as @a unless score @s anim_movement.eye_pressed matches 1 run scoreboard players add @a anim_movement.eye_cooldown_counter 1
execute as @a if score @s anim_movement.eye_pressed matches 1 run scoreboard players set @s anim_movement.eye_pressed 0
execute as @a if score @s anim_movement.eye_cooldown_counter matches 1000.. run scoreboard players set @s anim_movement.eye_cooldown_counter 1000