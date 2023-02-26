scoreboard players operation @s owner_id = $impl.editor.start.id scratch
tag @s add editor
tag @s add editor.cursor
effect give @s invisibility infinite 0 true
data merge entity @s {block_state:{Name:"minecraft:white_stained_glass"},brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],translation:[0.001f,0.001f,0.001f],right_rotation:[0f,0f,0f,1f],scale:[0.998f,0.998f,0.998f]}}
data modify entity @s Glowing set value 1b
tp @s ~ ~ ~ 0 0
