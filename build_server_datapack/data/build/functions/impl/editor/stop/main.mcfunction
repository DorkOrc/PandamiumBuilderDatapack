say stop
scoreboard players operation $id io = @s id
kill @e[tag=editor,predicate=build:matches_owner_id]

scoreboard players reset @s editor.holding_wand_ticks
