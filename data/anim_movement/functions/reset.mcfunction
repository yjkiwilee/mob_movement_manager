# Kill all recording & store_traj armorstands
kill @e[tag=recording,type=armor_stand]
kill @e[tag=store_traj,type=armor_stand]
# Reset all dummies
execute as @e[tag=_dummy] run function anim_movement:reset_internal