scoreboard players operation $p1x scratch = @s editor.position_1.x
scoreboard players operation $p1y scratch = @s editor.position_1.y
scoreboard players operation $p1z scratch = @s editor.position_1.z
scoreboard players operation $p2x scratch = @s editor.position_2.x
scoreboard players operation $p2y scratch = @s editor.position_2.y
scoreboard players operation $p2z scratch = @s editor.position_2.z

scoreboard players operation $p3x scratch = @s editor.position_3.x
scoreboard players operation $p3y scratch = @s editor.position_3.y
scoreboard players operation $p3z scratch = @s editor.position_3.z

scoreboard players operation $p4x scratch = $p2x scratch
scoreboard players operation $p4x scratch -= $p1x scratch
scoreboard players operation $p4x scratch += $p3x scratch
scoreboard players operation $p4y scratch = $p2y scratch
scoreboard players operation $p4y scratch -= $p1y scratch
scoreboard players operation $p4y scratch += $p3y scratch
scoreboard players operation $p4z scratch = $p2z scratch
scoreboard players operation $p4z scratch -= $p1z scratch
scoreboard players operation $p4z scratch += $p3z scratch

execute if score $p2x scratch < $p1x scratch run scoreboard players operation $p1x scratch >< $p2x scratch
execute if score $p2y scratch < $p1y scratch run scoreboard players operation $p1y scratch >< $p2y scratch
execute if score $p2z scratch < $p1z scratch run scoreboard players operation $p1z scratch >< $p2z scratch

execute if score $p4x scratch < $p3x scratch run scoreboard players operation $p3x scratch >< $p4x scratch
execute if score $p4y scratch < $p3y scratch run scoreboard players operation $p3y scratch >< $p4y scratch
execute if score $p4z scratch < $p3z scratch run scoreboard players operation $p3z scratch >< $p4z scratch

execute at @s summon marker run function build:impl/editor/action/clone/as_marker
