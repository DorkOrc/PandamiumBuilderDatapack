say start
scoreboard players operation $impl.editor.start.id scratch = @s id
execute at @s positioned ~ ~-5 ~ summon block_display run function build:impl/editor/start/create_cursor
