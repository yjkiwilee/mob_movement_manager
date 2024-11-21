# Increasing the number in the command below makes the datapack skip more ticks between steps playing / recording.
execute if score $global anim_movement.tick_counter matches 0 run function anim_movement:tick_update

scoreboard players add $global anim_movement.tick_counter 1