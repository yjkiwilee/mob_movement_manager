execute as @a[team=admin] run function record:step

execute as @e[tag=store_traj,type=armor_stand] run function play:step

scoreboard players set $global anim_movement.tick_counter -1