scoreboard players operation $id io = @s id
execute as @e[type=block_display,tag=editor.cursor,predicate=build:matches_owner_id,limit=1] run function build:impl/editor/using/cursor/as_cursor
