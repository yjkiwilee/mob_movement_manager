# Store the current traj_id
scoreboard players operation #player anim_movement.traj_id = @s anim_movement.traj_id
# Remove NBT from dummy
execute as @s run data merge entity @s {CustomName:'""',CustomNameVisible:0b, Tags:[], NoAI:0b, NoGravity:0b, Invulnerable:0b}
# Update trajectory status
execute as @e[tag=store_traj,type=armor_stand] if score @s anim_movement.traj_id = #player anim_movement.traj_id run function play:remove_dummy_and_stop