execute store success score $impl.editor.using.main scratch if score @s editor.clicked matches 1..
scoreboard players reset @s editor.clicked

scoreboard players operation $matches_owner_id.id predicate.in = @s id
execute at @s as @e[type=slime,tag=editor.cursor,predicate=build:matches_owner_id] run function build:impl/editor/using/as_cursor
