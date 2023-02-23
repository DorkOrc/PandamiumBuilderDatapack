execute as @a[scores={editor.holding_wand_last_tick=1},predicate=!build:editor/holding_wand] run function build:impl/editor/start/main
execute as @a[scores={editor.holding_wand_last_tick=0},predicate=build:editor/holding_wand] run function build:impl/editor/stop/main

execute as @a[predicate=build:editor/holding_wand] run function build:impl/editor/using/main

function build:impl/editor/collect_garbage/main

# Post
execute as @a store result score @s editor.holding_wand_last_tick if predicate build:editor/holding_wand
