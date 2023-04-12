scoreboard players set @s editor.state 2

scoreboard players operation @s editor.position_3.x = $cursor_x scratch
scoreboard players operation @s editor.position_3.y = $cursor_y scratch
scoreboard players operation @s editor.position_3.z = $cursor_z scratch
tellraw @s ["set third position: ",{"score":{"name":"@s","objective":"editor.position_3.x"}}," ",{"score":{"name":"@s","objective":"editor.position_3.y"}}," ",{"score":{"name":"@s","objective":"editor.position_3.z"}}]

scoreboard players operation $id io = @s id
scoreboard players operation $id scratch = @s id
execute at @e[type=marker,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] summon marker run function build:impl/editor/click/create_position_3
data remove entity @e[type=text_display,tag=editor.cursor_block_colour,predicate=build:matches_owner_id,limit=1] text
