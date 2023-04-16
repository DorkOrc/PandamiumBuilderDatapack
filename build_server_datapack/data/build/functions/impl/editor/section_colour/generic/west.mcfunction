scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.section_colour
tag @s add editor.section_colour.west

tp @s ~ ~ ~ -90 0

execute store result entity @s Pos[0] double 1 run scoreboard players get $p2x scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $p1y scratch
scoreboard players operation $z scratch = $p1z scratch
scoreboard players operation $z scratch += $p1z scratch
execute store result entity @s Pos[2] double 0.5 run scoreboard players operation $z scratch += $z_length scratch

data modify entity @s background set from storage build:temp background
data merge entity @s {text:'" "',brightness:{block:15,sky:15}}

data modify storage build:temp transformation set value {translation:[-0.1f,0f,1.0001f],scale:[8f,3.6325f,1f]}
execute store result storage build:temp transformation.translation[0] float -0.1 run scoreboard players get $z_length scratch
execute store result storage build:temp transformation.scale[0] float 8 run scoreboard players get $z_length scratch
execute store result storage build:temp transformation.scale[1] float 3.6325 run scoreboard players get $y_length scratch
data modify entity @s transformation merge from storage build:temp transformation
