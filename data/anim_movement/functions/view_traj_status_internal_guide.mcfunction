tellraw @s ["",{"text":""}]
tellraw @s ["",{"text":"====== PATH MANAGER ======","hoverEvent":{"action":"show_text","contents":{"text":"Click to refresh"}},"clickEvent":{"action":"run_command","value":"/function anim_movement:view_traj_status"}}]
tellraw @s ["",{"text":""}]
$tellraw @s ["",{"text":"Current path","italic":true,"color":"gold"},{"text":": ","italic":true},{"text":"< ","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Select previous path"}},"clickEvent":{"action":"run_command","value":"/function anim_movement:decrement_traj_id_withstatus"}},{"text":"$(id)"},{"text":" >","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Select next path"}},"clickEvent":{"action":"run_command","value":"/function anim_movement:increment_traj_id_withstatus"}},{"text":" "},{"text":"[Unlink current dummy]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Click to unlink selected dummy"}},"clickEvent":{"action":"run_command","value":"/function play:clear_dummy"}}]
tellraw @s ["",{"text":""}]
tellraw @s ["",{"text":"0: No | 1: Yes | *: Currently selected path","italic":true,"color":"gray"}]
tellraw @s ["",{"text":"Path ID","color":"green"},{"text":" | ","color":"white"},{"text":"Dummy?","color":"light_purple","hoverEvent":{"action":"show_text","contents":{"text":"Does this path have an assigned dummy?"}}},{"text":" | ","color":"white"},{"text":"Playing?","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Is the path currently playing?"}}},{"text":" | ","color":"white"},{"text":"Debug?","color":"light_purple","hoverEvent":{"action":"show_text","contents":{"text":"Are the armorstands and labels for this path visible?"}}},{"text":" | ","color":"white"},{"text":"Delete","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Click on 'X' to delete path"}}},{"text":" | ","color":"white"},{"text":"Coordinates","color":"light_purple"}]