execute summon text_display run function build:textdm/update/generate/table/as_text_display

scoreboard players add <i> variable 1
execute if score <i> variable <= <last_column_index> variable run function build:textdm/update/generate/table/loop
