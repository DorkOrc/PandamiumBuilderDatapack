scoreboard players operation $p1x scratch = @s editor.position_1.x
scoreboard players operation $p1y scratch = @s editor.position_1.y
scoreboard players operation $p1z scratch = @s editor.position_1.z
scoreboard players operation $p2x scratch = $cursor_x scratch
scoreboard players operation $p2y scratch = $cursor_y scratch
scoreboard players operation $p2z scratch = $cursor_z scratch

execute if score $p2x scratch < $p1x scratch run scoreboard players operation $p1x scratch >< $p2x scratch
execute if score $p2y scratch < $p1y scratch run scoreboard players operation $p1y scratch >< $p2y scratch
execute if score $p2z scratch < $p1z scratch run scoreboard players operation $p1z scratch >< $p2z scratch

scoreboard players add $p2x scratch 1
scoreboard players add $p2y scratch 1
scoreboard players add $p2z scratch 1

execute at @s summon marker run function build:impl/editor/using/perimeter/as_marker
