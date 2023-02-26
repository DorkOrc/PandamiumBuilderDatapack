execute as @a[scores={editor.holding_wand_ticks=1..},predicate=!build:editor/holding_wand] run function build:impl/editor/stop/main
scoreboard players add @a[predicate=build:editor/holding_wand] editor.holding_wand_ticks 1

execute as @a[scores={editor.holding_wand_ticks=1}] run function build:impl/editor/start/main
execute as @a[scores={editor.holding_wand_ticks=1..}] run function build:impl/editor/using/main

function build:impl/editor/collect_garbage/main
