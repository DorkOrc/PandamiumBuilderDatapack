# <block> is at 0 0 0 in minecraft:overworld

scoreboard players operation $p1x scratch = @s editor.position_1.x
scoreboard players operation $p1y scratch = @s editor.position_1.y
scoreboard players operation $p1z scratch = @s editor.position_1.z
scoreboard players operation $p2x scratch = @s editor.position_2.x
scoreboard players operation $p2y scratch = @s editor.position_2.y
scoreboard players operation $p2z scratch = @s editor.position_2.z

execute if score $p2x scratch < $p1x scratch run scoreboard players operation $p1x scratch >< $p2x scratch
execute if score $p2y scratch < $p1y scratch run scoreboard players operation $p1y scratch >< $p2y scratch
execute if score $p2z scratch < $p1z scratch run scoreboard players operation $p1z scratch >< $p2z scratch

execute at @s summon marker run function build:impl/editor/action/fill/as_marker
