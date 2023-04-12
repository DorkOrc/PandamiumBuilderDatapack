say start
scoreboard players operation $id scratch = @s id
execute at @s positioned ~ ~-5 ~ summon marker run function build:impl/editor/start/create_cursor
execute at @s rotated 0 0 anchored eyes positioned ^ ^-.5 ^ summon interaction run function build:impl/editor/start/create_interaction
