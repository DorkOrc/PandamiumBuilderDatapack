scoreboard players set $distance scratch 0 
scoreboard players set $hit scratch 0
scoreboard players operation $reach scratch = @s editor.reach
scoreboard players operation $select_before scratch = @s editor.select_before

scoreboard players operation $secondary_cursor_x scratch = @s editor.secondary_cursorition_2.x
scoreboard players operation $secondary_cursor_x scratch -= @s editor.secondary_cursorition_1.x
scoreboard players operation $secondary_cursor_y scratch = @s editor.secondary_cursorition_2.y
scoreboard players operation $secondary_cursor_y scratch -= @s editor.secondary_cursorition_1.y
scoreboard players operation $secondary_cursor_z scratch = @s editor.secondary_cursorition_2.z
scoreboard players operation $secondary_cursor_z scratch -= @s editor.secondary_cursorition_1.z

scoreboard players operation $state scratch = @s editor.state

execute at @s[gamemode=!spectator] anchored eyes positioned ^ ^ ^ run function build:impl/editor/using/cursor/raycast
execute at @s[gamemode=spectator] anchored eyes positioned ^ ^ ^7 run function build:impl/editor/using/cursor/teleport_cursor
