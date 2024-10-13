# Detect whether the user is holding the control item and place eye of ender in off-hand
execute as @a[nbt={SelectedItem:{tag:{controlItem:1b}}}] run item replace entity @s weapon.offhand with minecraft:ender_eye{controlEye:1b,display:{Name:'"Right-click detection"'}}
execute as @a[nbt=!{SelectedItem:{tag:{controlItem:1b}}}] run item replace entity @s weapon.offhand with air