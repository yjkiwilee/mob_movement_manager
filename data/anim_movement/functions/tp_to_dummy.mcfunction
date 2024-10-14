# Put NBT tag to dummy with the corresponding id
$execute as @e[tag=_dummy] if score @s anim_movement.traj_id matches $(id) run data modify entity @s Tags prepend value "tp_target"
# Teleport player to target
tp @s @e[tag=tp_target,limit=1]
# Remove tp taget NBT tag
execute as @e[tag=tp_target] run data remove entity @s Tags[0]
# Show message
$execute as @a if score @s anim_movement.is_admin matches 1 run tellraw @s {"text":"Teleported to dummy id $(id)"}