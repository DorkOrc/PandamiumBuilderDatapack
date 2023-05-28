scoreboard players set <fatal_error> variable 0

execute store success score <fatal_error> variable unless entity @s[type=item_display,tag=custom_block.base,tag=custom_block.text_display_manager]
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"[Text Display Manager]","color":"dark_red"},[{"text":" A fatal error occurred in ","color":"red"},{"text":"build:textdm/update/main","color":"dark_aqua"},": Function was ran as the wrong entity. Expected ",{"text":"[type=item_display,tag=custom_block.base,tag=custom_block.text_display_manager]","color":"yellow"},"; instead, got ",[{"text":"","color":"yellow"},{"selector":"@s"}," [tag=",{"nbt":"Tags[]","entity":"@s","separator":", tag="},"]"]]]
execute if score <fatal_error> variable matches 1 run return 0

execute store success score <fatal_error> variable unless data block ~ ~ ~ {id:"minecraft:lectern",Book:{id:'minecraft:writable_book'}}.Book.tag.pages[0]
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"[Text Display Manager]","color":"dark_red"},[{"text":" A fatal error occurred in ","color":"red"},{"text":"build:textdm/update/main","color":"dark_aqua"},": Could not find data at path ",{"text":"{id:'minecraft:lectern',Book:{id:'minecraft:writable_book'}}.Book.tag.pages[0]","color":"yellow"},"."]]
execute if score <fatal_error> variable matches 1 run return 0

data modify storage build:textdm base.item set from entity @s item

#

execute at @s run data modify storage build:textdm pages set from block ~ ~ ~ Book.tag.pages

data modify storage build:textdm io.data set from storage build:textdm pages[0]
function build:textdm/update/parse_data/main
execute if score <fatal_error> variable matches 1 run return 0
data modify storage build:textdm config set from storage build:textdm io.data

data modify storage build:textdm io.lines set from storage build:textdm pages
data remove storage build:textdm io.lines[0]
function build:textdm/update/parse_lines/main
execute if score <fatal_error> variable matches 1 run return 0
data modify storage build:textdm sections set from storage build:textdm io.lines

#tellraw @a ["",{"text":"config = ","color":"yellow"},{"nbt":"config","storage":"build:textdm"},{"text":"\nlines = ","color":"yellow"},{"nbt":"sections","storage":"build:textdm"}]

function build:textdm/update/generate/main
