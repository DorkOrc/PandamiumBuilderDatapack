scoreboard players add <parse_lines.loop.i> variable 1

#tellraw @a [{"score":{"name":"<parse_lines.loop.i>","objective":"variable"}}," ",{"text":"[NBT]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"nbt":"","storage":"build:textdm"}}}]
function build:textdm/update/parse_lines/iter

#data remove storage build:textdm parse_lines.pages[0]
execute unless score <parse_lines.loop.i> variable matches 100.. if score <fatal_error> variable matches 0 if data storage build:textdm parse_lines.pages[0] run function build:textdm/update/parse_lines/loop
