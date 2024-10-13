scoreboard players operation #player anim_movement.recording.count = @s anim_movement.recording.count
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,Marker:1b,Tags:["recording_pre"]}
tp @e[tag=recording_pre,limit=1,type=armor_stand] @s
execute as @e[tag=recording_pre,limit=1,type=armor_stand] at @s run function record:step_step_internal
scoreboard players operation @s anim_movement.recording.count += $global anim_movement.recording.step