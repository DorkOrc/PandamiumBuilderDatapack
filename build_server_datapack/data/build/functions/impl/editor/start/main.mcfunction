scoreboard players reset @s editor.right_click

scoreboard players operation $owner_id scratch = @s id
execute at @s positioned ~ ~200 ~ summon marker run function build:impl/editor/start/create_cursor
execute at @s positioned ~ ~200 ~ summon interaction run function build:impl/editor/start/create_interaction
