scoreboard players set @s editor.state 4

scoreboard players operation @s editor.position_3.x = $cursor_x scratch
scoreboard players operation @s editor.position_3.y = $cursor_y scratch
scoreboard players operation @s editor.position_3.z = $cursor_z scratch
tellraw @s ["set third position: ",{"score":{"name":"@s","objective":"editor.position_3.x"}}," ",{"score":{"name":"@s","objective":"editor.position_3.y"}}," ",{"score":{"name":"@s","objective":"editor.position_3.z"}}]

scoreboard players operation $pos_3b_x scratch = @s editor.position_2.x
scoreboard players operation $pos_3b_x scratch -= @s editor.position_1.x
scoreboard players operation $pos_3b_x scratch += @s editor.position_3.x
scoreboard players operation $pos_3b_y scratch = @s editor.position_2.y
scoreboard players operation $pos_3b_y scratch -= @s editor.position_1.y
scoreboard players operation $pos_3b_y scratch += @s editor.position_3.y
scoreboard players operation $pos_3b_z scratch = @s editor.position_2.z
scoreboard players operation $pos_3b_z scratch -= @s editor.position_1.z
scoreboard players operation $pos_3b_z scratch += @s editor.position_3.z

scoreboard players operation $owner_id io = @s id
execute at @e[type=marker,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] summon marker run function build:impl/editor/click/create_position_3
execute as @e[type=text_display,tag=editor.cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/block_colour/hide_colour
execute at @s run function build:impl/editor/section_colour/summon_grey2
