execute as @s run function record:step_setup_recording_armorstand
forceload add ~ ~
data modify entity @s Tags set value ["recording"]