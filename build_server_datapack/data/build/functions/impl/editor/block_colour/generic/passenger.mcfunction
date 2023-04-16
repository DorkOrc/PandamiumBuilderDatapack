scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.block_colour
tag @s add editor.block_colour.passenger

data modify entity @s background set from storage build:temp background
data merge entity @s {text:'" "',brightness:{block:15,sky:15},transformation:{translation:[-0.1f,0f,0.501f],scale:[8f,3.6325f,1f]}}
tp @s ~ ~ ~ ~ ~
data modify entity @s[x_rotation=90] transformation merge value {translation:[-0.1f,1.001f,0.5f],left_rotation:{axis:[1f,0f,0f],angle:-1.57079632679f}}
data modify entity @s[x_rotation=-90] transformation merge value {translation:[-0.1f,-0.001f,-0.5f],left_rotation:{axis:[1f,0f,0f],angle:1.57079632679f}}
tp @s ~ ~ ~ ~ 0


ride @s mount @e[type=text_display,tag=editor.block_colour.new_base,limit=1]
