scoreboard players set @s editor.state 1

scoreboard players operation @s editor.position_1.x = $cursor_x scratch
scoreboard players operation @s editor.position_1.y = $cursor_y scratch
scoreboard players operation @s editor.position_1.z = $cursor_z scratch
tellraw @s ["set first position: ",{"score":{"name":"@s","objective":"editor.position_1.x"}}," ",{"score":{"name":"@s","objective":"editor.position_1.y"}}," ",{"score":{"name":"@s","objective":"editor.position_1.z"}}]

scoreboard players operation $owner_id io = @s id
execute at @e[type=marker,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] summon marker run function build:impl/editor/click/create_position_1
