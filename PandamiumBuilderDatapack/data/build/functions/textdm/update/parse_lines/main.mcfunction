data modify storage build:textdm parse_lines.pages set from storage build:textdm io.lines

data modify storage build:textdm parse_lines.sections set value []

scoreboard players set <fatal_error> variable 0
scoreboard players set <page> variable 1

scoreboard players set <parse_lines.loop.i> variable 0
execute summon text_display run function build:textdm/update/parse_lines/as_text_display

data modify storage build:textdm io.lines set from storage build:textdm parse_lines.sections