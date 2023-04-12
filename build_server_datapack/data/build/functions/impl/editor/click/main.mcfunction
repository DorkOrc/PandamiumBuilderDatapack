scoreboard players operation $state scratch = @s editor.state
execute if score $state scratch matches 0 run function build:impl/editor/click/choose_first_position
execute if score $state scratch matches 1 run function build:impl/editor/click/choose_second_position
execute if score $state scratch matches 3 run function build:impl/editor/click/choose_third_position
