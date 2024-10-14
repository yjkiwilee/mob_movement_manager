# Store the necessary information into NBT storage
# Trajectory ID
execute store result storage anim_movement:traj_summ id int 1 run scoreboard players get @s anim_movement.traj_id
# Does this trajectory have an assigned dummy?
# Set the 'has_dummy' scoreboard value of the corresponding store_traj armorstand
execute store result storage anim_movement:traj_summ hasDummy int 1 run scoreboard players get @s anim_movement.recording.has_dummy
# Is the dummy visible?
execute store result storage anim_movement:traj_summ isDummyVisible int 1 run scoreboard players get @s anim_movement.recording.dummy_visibility
# Is the trajectory playing?
execute store result storage anim_movement:traj_summ isPlaying int 1 run scoreboard players get @s anim_movement.playing
# Are the armorstands and labels visible?
execute store result storage anim_movement:traj_summ isDebugVisible int 1 run scoreboard players get @s anim_movement.recording.debug_visibility
# Coordinates of the trajectory
execute store result storage anim_movement:traj_summ x float 1 run data get entity @s Pos[0]
execute store result storage anim_movement:traj_summ y float 1 run data get entity @s Pos[1]
execute store result storage anim_movement:traj_summ z float 1 run data get entity @s Pos[2]
# Pass these information to the message function
function anim_movement:view_traj_status_msg with storage anim_movement:traj_summ