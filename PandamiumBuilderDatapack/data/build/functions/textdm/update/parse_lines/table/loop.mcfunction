scoreboard players add <row> variable 1
execute if score <row> variable > <rows> variable run scoreboard players add <column> variable 1
execute if score <column> variable > <columns> variable run return 0
execute if score <row> variable > <rows> variable run data modify storage build:textdm parse_lines.sections[-1].columns append value []
execute if score <row> variable > <rows> variable run scoreboard players set <row> variable 1

#tellraw @a ["(column=",{"score":{"name":"<column>","objective":"variable"}},",row=",{"score":{"name":"<row>","objective":"variable"}},"): ",{"nbt":"parse_lines.pages[0]","storage":"build:textdm"}]

# Validate Text
data modify storage build:textdm parse_lines.slice3 set from storage build:textdm parse_lines.pages[0]
data modify entity @s text set value '["",{"nbt":"parse_lines.slice3","storage":"build:textdm","interpret":true}]'

# Append Text
data modify storage build:textdm parse_lines.sections[-1].columns[-1] append from entity @s text

data remove storage build:textdm parse_lines.pages[0]
function build:textdm/update/parse_lines/table/loop
