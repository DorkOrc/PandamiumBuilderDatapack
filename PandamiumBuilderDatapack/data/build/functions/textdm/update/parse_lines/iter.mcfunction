scoreboard players add <page> variable 1

data modify storage build:textdm parse_lines.slice set string storage build:textdm parse_lines.pages[0] 0 1
execute unless data storage build:textdm parse_lines{slice:'/'} run function build:textdm/update/parse_lines/line/main
execute if data storage build:textdm parse_lines{slice:'/'} run function build:textdm/update/parse_lines/table/main
