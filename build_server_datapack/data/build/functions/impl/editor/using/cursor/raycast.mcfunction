execute unless block ~ ~ ~ air store success score $hit scratch run function build:impl/editor/using/cursor/teleport_cursor
execute if score $hit scratch matches 0 if score $distance scratch matches 6400 store success score $hit scratch run function build:impl/editor/using/cursor/teleport_cursor

execute if score $hit scratch matches 0 run scoreboard players add $distance scratch 1
execute if score $hit scratch matches 0 positioned ^ ^ ^0.01 run function build:impl/editor/using/cursor/raycast
