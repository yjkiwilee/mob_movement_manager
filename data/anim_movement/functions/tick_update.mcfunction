execute as @a[team=admin] unless score @s anim_movement.playing.prev matches 0 unless score @s anim_movement.playing matches 0 run function record:step

execute as @e[tag=store_traj,type=armor_stand] run function play:step

scoreboard players set $global anim_movement.tick_counter -1