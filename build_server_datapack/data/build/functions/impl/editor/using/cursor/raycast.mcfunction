execute unless block ~ ~ ~ air run scoreboard players set $hit scratch 1
execute if score $distance scratch >= $reach scratch run scoreboard players set $hit scratch 1

execute if score $hit scratch matches 1 if score $select_before scratch matches 0 run function build:impl/editor/using/cursor/teleport_cursor
execute if score $hit scratch matches 1 if score $select_before scratch matches 1 positioned ^ ^ ^-0.01 run function build:impl/editor/using/cursor/teleport_cursor

execute if score $hit scratch matches 0 run scoreboard players add $distance scratch 1
execute if score $hit scratch matches 0 positioned ^ ^ ^0.01 run function build:impl/editor/using/cursor/raycast
