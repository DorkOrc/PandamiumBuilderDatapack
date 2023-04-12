function build:impl/editor/using/cursor/main
# $cursor_x scratch -> ???
# $cursor_y scratch -> ???
# $cursor_z scratch -> ???

execute if score @s editor.click matches 1.. run function build:impl/editor/click/main
scoreboard players reset @s editor.click

scoreboard players operation $state scratch = @s editor.state
execute if score $state scratch matches 0 run title @s actionbar ["C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 1 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 2 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | P2: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}]
execute if score $state scratch matches 3 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | P2: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}," | C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 2..3 run function build:impl/editor/using/perimeter/main

scoreboard players operation $owner_id io = @s id
execute at @s rotated 0 0 anchored eyes positioned ^ ^-.5 ^ run tp @e[type=interaction,tag=editor.interaction,predicate=build:matches_owner_id,limit=1] ~ ~ ~
