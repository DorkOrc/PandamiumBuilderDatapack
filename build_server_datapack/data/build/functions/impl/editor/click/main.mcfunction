execute at @s run playsound entity.item_frame.rotate_item master @s
#Left Click: execute at @s run playsound entity.item_frame.add_item master @s

scoreboard players operation $state scratch = @s editor.state
execute if score $state scratch matches 0 run function build:impl/editor/click/choose_first_position
execute if score $state scratch matches 1 run function build:impl/editor/click/choose_second_position
execute if score $state scratch matches 2 run function build:impl/editor/stop/main
execute if score $state scratch matches 3 run function build:impl/editor/click/choose_third_position
execute if score $state scratch matches 4..5 run function build:impl/editor/stop/main

