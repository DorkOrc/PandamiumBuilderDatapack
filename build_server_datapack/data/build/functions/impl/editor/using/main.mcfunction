scoreboard players set @s editor.reach 700
execute if entity @s[gamemode=!spectator] unless predicate build:editor/holding_wand_mainhand run function build:impl/editor/using/set_reach_from_hotbar

function build:impl/editor/using/cursor/main
function build:impl/editor/using/cursor/get_pos
# $cursor_x scratch -> ???
# $cursor_y scratch -> ???
# $cursor_z scratch -> ???

execute store success score $choose_block scratch if predicate build:is_sneaking
execute unless score @s editor.state matches 2 unless score @s editor.state matches 4 run scoreboard players set $choose_block scratch 0
execute if score $choose_block scratch matches 0 if score @s[gamemode=!spectator] editor.right_click matches 1.. run function build:impl/editor/click/main
execute if score $choose_block scratch matches 1 if score @s[gamemode=!spectator] editor.left_click matches 1.. run function build:impl/editor/shift_click/main
execute if score $choose_block scratch matches 1 if score @s[gamemode=!spectator] editor.right_click matches 1.. unless score @s editor.left_click matches 1.. run function build:impl/editor/shift_click/main
scoreboard players reset @s editor.right_click
scoreboard players reset @s editor.left_click

scoreboard players operation $state scratch = @s editor.state
execute if score $state scratch matches 0 run title @s actionbar ["C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 1 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 2 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | P2: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}]
execute if score $state scratch matches 3 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | P2: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}," | C: ",{"score":{"name":"$cursor_x","objective":"scratch"}}," ",{"score":{"name":"$cursor_y","objective":"scratch"}}," ",{"score":{"name":"$cursor_z","objective":"scratch"}}]
execute if score $state scratch matches 4 run title @s actionbar ["P1: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}," | P2: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}," | P3: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}]
execute if score $state scratch matches 1 run function build:impl/editor/using/perimeter/type/p1_c
execute if score $state scratch matches 2..4 run function build:impl/editor/using/perimeter/type/p1_p2
execute if score $state scratch matches 3 run function build:impl/editor/using/perimeter/type/c_p3b
execute if score $state scratch matches 4 run function build:impl/editor/using/perimeter/type/p3_p3b

scoreboard players operation $owner_id io = @s id
execute if predicate build:is_sneaking at @s rotated 0 0 anchored eyes run tp @e[type=interaction,tag=editor.interaction,predicate=build:matches_owner_id,limit=1] ^ ^-0.98 ^
execute unless predicate build:is_sneaking at @s run tp @e[type=interaction,tag=editor.interaction,predicate=build:matches_owner_id,limit=1] ~ ~200 ~
