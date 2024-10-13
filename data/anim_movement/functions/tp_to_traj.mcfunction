# Put NBT tag to trajectory marker with the corresponding id
$execute as @e[tag=store_traj] if score @s anim_movement.traj_id matches $(id) run data modify entity @s Tags prepend value "tp_target"
# Teleport player to target
tp @s @e[tag=tp_target,limit=1]
# Remove tp taget NBT tag
execute as @e[tag=tp_target] run data remove entity @s Tags[0]
# Show message
$tellraw @a[team=admin] {"text":"Teleported to path id $(id)"}