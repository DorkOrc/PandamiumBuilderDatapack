scoreboard players operation $owner_id io = @s id
execute as @e[tag=editor,predicate=build:matches_owner_id] run function build:utils/kill

title @s actionbar ""

scoreboard players reset @s editor.holding_wand_ticks
scoreboard players reset @s editor.state
