scoreboard players set @s editor.state 2

scoreboard players operation @s editor.position_2.x = $cursor_x scratch
scoreboard players operation @s editor.position_2.y = $cursor_y scratch
scoreboard players operation @s editor.position_2.z = $cursor_z scratch
tellraw @s ["set second position: ",{"score":{"name":"@s","objective":"editor.position_2.x"}}," ",{"score":{"name":"@s","objective":"editor.position_2.y"}}," ",{"score":{"name":"@s","objective":"editor.position_2.z"}}]

scoreboard players operation $owner_id io = @s id
execute at @e[type=marker,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] summon marker run function build:impl/editor/click/create_position_2
execute as @e[type=text_display,tag=editor.cursor_block_colour_base,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/block_colour/hide_colour
execute at @s run function build:impl/editor/section_colour/summon_grey

execute if predicate build:editor/holding_wand_mainhand run function build:impl/editor/click/swap_mainhand_offhand

function build:impl/editor/click/menu/print_normal_selection_menu
