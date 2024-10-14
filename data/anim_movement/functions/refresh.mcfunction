# Kill all recording & store_traj armorstands
kill @e[tag=recording,type=armor_stand]
kill @e[tag=store_traj,type=armor_stand]
# Reset all dummies
execute as @e[tag=_dummy] run data merge entity @s {CustomName:'""',CustomNameVisible:0b, NoAI:0b, NoGravity:0b, Invulnerable:0b}
execute as @e[tag=_dummy] run data remove entity @s Tags[-1]