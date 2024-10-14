# Give glow effect to dummy with trajectory id
$execute as @e[tag=_dummy] if score @s anim_movement.traj_id matches $(id) run effect give @s minecraft:glowing 5 1 true