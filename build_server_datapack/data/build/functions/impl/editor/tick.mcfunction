execute as @a[scores={editor.holding_wand_ticks=1..},predicate=!build:editor/holding_wand] run function build:impl/editor/stop/main
scoreboard players add @a[predicate=build:editor/holding_wand] editor.holding_wand_ticks 1
execute as @a[scores={editor.holding_wand_ticks=1}] run function build:impl/editor/start/main
execute as @a[scores={editor.holding_wand_ticks=1..}] run function build:impl/editor/using/main

execute at @e[tag=editor.position_1] align xyz run particle enchanted_hit ~.5 ~.5 ~.5 0.4 0.4 0.4 0 1
execute at @e[tag=editor.position_2] align xyz run particle enchanted_hit ~.5 ~.5 ~.5 0.4 0.4 0.4 0 1

execute if data storage build:editor queue[0] run function build:impl/editor/queue/main

function build:impl/editor/collect_garbage/main
