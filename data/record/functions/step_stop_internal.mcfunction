execute as @s run function record:step_setup_store_traj

tp @s ~ ~ ~

data merge entity @s {Tags:["store_traj"]}