data modify storage build:textdm parse_lines.sections append value {type:'table',data:{},columns:[[]]}
data modify storage build:textdm parse_lines.sections[-1].data set value {alignment:'center',spacing:0.5f}

data modify storage build:textdm io.data set string storage build:textdm parse_lines.pages[0] 1
function build:textdm/update/parse_data/main
execute if score <fatal_error> variable matches 1 run return 0
data modify storage build:textdm parse_lines.sections[-1].data merge from storage build:textdm io.data

execute unless data storage build:textdm io.data.rows run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] {"text":"MISSING TABLE DATA: rows"}
execute if score <fatal_error> variable matches 1 run return 0
execute unless data storage build:textdm io.data.columns run scoreboard players set <fatal_error> variable 1
execute if score <fatal_error> variable matches 1 run tellraw @a[tag=source,limit=1] {"text":"MISSING TABLE DATA: columns"}
execute if score <fatal_error> variable matches 1 run return 0

execute store result score <rows> variable run data get storage build:textdm io.data.rows
execute store result score <columns> variable run data get storage build:textdm io.data.columns

scoreboard players set <row> variable 0
scoreboard players set <column> variable 1
data remove storage build:textdm parse_lines.pages[0]
function build:textdm/update/parse_lines/table/loop
