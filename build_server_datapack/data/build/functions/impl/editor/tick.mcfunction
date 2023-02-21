execute as @a[scores={editor.holding_wand_last_tick=1},predicate=!build:editor/holding_wand] run function build:impl/editor/stop_holding/main
execute as @a[predicate=build:editor/holding_wand] run function build:impl/editor/start_holding/main


function build:impl/editor/collect_garbage/main

execute as @a store result score @s editor.holding_wand_last_tick if predicate build:editor/holding_wand
