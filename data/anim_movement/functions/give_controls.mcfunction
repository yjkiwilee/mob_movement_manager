function anim_movement:set_admin

give @s minecraft:book{ControlID:"view_traj_status",controlItem:1b,display:{Name:'"Open path manager"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:iron_nugget{ControlID:"decrement_traj_id",controlItem:1b,display:{Name:'"Select previous path"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:gold_nugget{ControlID:"increment_traj_id",controlItem:1b,display:{Name:'"Select next path"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:red_dye{ControlID:"toggle_recording",controlItem:1b,display:{Name:'"Start/stop recording"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:lime_dye{ControlID:"toggle_playing",controlItem:1b,display:{Name:'"Start/stop playing"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:stick{ControlID:"toggle_debug_elem",controlItem:1b,display:{Name:'"Toggle labels & armorstands visibility"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:lead{ControlID:"select_dummy",controlItem:1b,display:{Name:'"Select dummy"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:blaze_powder{ControlID:"clear_dummy",controlItem:1b,display:{Name:'"Unlink dummy"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
give @s minecraft:firework_star{ControlID:"delete_traj",controlItem:1b,display:{Name:'"Delete current path"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1 
give @s minecraft:nether_star{ControlID:"tp_to_traj",controlItem:1b,display:{Name:'"Teleport to current path"'},Enchantments:[{lvl:1,id:"minecraft:unbreaking"}],HideFlags:1b} 1
