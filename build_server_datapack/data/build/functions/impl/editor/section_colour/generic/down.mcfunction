scoreboard players operation @s owner_id = $owner_id io
tag @s add editor
tag @s add editor.section_colour
tag @s add editor.section_colour.down

tp @s ~ ~ ~ 0 0

scoreboard players operation $x scratch = $p1x scratch
scoreboard players operation $x scratch += $p1x scratch
execute store result entity @s Pos[0] double 0.5 run scoreboard players operation $x scratch += $x_length scratch
execute store result entity @s Pos[1] double 1 run scoreboard players get $p1y scratch
scoreboard players operation $z scratch = $p1z scratch
scoreboard players operation $z scratch += $p1z scratch
execute store result entity @s Pos[2] double 0.5 run scoreboard players operation $z scratch += $z_length scratch

data modify entity @s background set from storage build:temp background
data merge entity @s {text:'" "',brightness:{block:15,sky:15}}

data modify storage build:temp transformation set value {translation:[-0.1f,-0.0001f,-0.5f],scale:[8f,3.6325f,1f],left_rotation:{axis:[1f,0f,0f],angle:1.57079632679f}}
execute store result storage build:temp transformation.translation[0] float -0.1 run scoreboard players get $x_length scratch
execute store result storage build:temp transformation.translation[2] float -0.5 run scoreboard players get $z_length scratch
execute store result storage build:temp transformation.scale[0] float 8 run scoreboard players get $x_length scratch
execute store result storage build:temp transformation.scale[1] float 3.6325 run scoreboard players get $z_length scratch
data modify entity @s transformation merge from storage build:temp transformation

