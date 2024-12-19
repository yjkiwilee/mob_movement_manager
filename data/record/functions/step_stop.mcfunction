# Hide all recording armorstands
execute as @e[tag=recording,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run data merge entity @s {Invisible:1b}

# Remove and add back forced chunk loading for recording armorstands
execute as @e[tag=recording,type=armor_stand] at @s run forceload remove ~ ~
execute as @e[tag=recording,type=armor_stand] at @s run forceload add ~ ~

summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomNameVisible:0b,Tags:["store_traj_new"]}
execute as @e[tag=store_traj_new,limit=1,type=armor_stand] at @s run function record:step_stop_internal

execute as @s run function record:record_stop_msg with storage anim_movement:storage