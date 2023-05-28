data remove storage build:textdm parse_lines.slice2
data modify storage build:textdm parse_lines.slice2 set string storage build:textdm parse_lines.pages[0] -3
execute if data storage build:textdm parse_lines{slice2:'...'} run data modify storage build:textdm parse_lines.pages[0] set string storage build:textdm parse_lines.pages[0] 0 -3
data modify storage build:textdm parse_lines.slice3 set from storage build:textdm parse_lines.pages[0]

data modify entity @s text set value '{"nbt":"parse_lines.slice3","storage":"build:textdm","interpret":true}'

data modify storage build:textdm parse_lines.sections[-1].join append from storage build:textdm parse_lines.pages[0]
data remove storage build:textdm parse_lines.pages[0]
execute if data storage build:textdm parse_lines{slice2:'...'} run function build:textdm/update/parse_lines/line/loop
