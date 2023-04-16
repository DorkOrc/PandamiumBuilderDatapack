data modify storage build:temp background set value 524238655L

scoreboard players operation $p1x scratch = @s editor.position_1.x
scoreboard players operation $p1y scratch = @s editor.position_1.y
scoreboard players operation $p1z scratch = @s editor.position_1.z
scoreboard players operation $p2x scratch = @s editor.position_2.x
scoreboard players operation $p2y scratch = @s editor.position_2.y
scoreboard players operation $p2z scratch = @s editor.position_2.z

function build:impl/editor/section_colour/generic/main
