data modify storage build:textdm this_line set from storage build:textdm sections[-1]
execute if data storage build:textdm this_line{type:'line'} run function build:textdm/update/generate/line/main
execute if data storage build:textdm this_line{type:'table'} run function build:textdm/update/generate/table/main

data remove storage build:textdm sections[-1]
execute if data storage build:textdm sections[0] run function build:textdm/update/generate/iter
