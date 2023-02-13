#blingedit:tell_actions
execute if score @s blingedit matches -1 run function blingedit:options
execute if score @s blingedit matches -2 run function blingedit:move_up
execute if score @s blingedit matches -3 run function blingedit:move_down
execute if score @s blingedit matches -4 run function blingedit:move_left
execute if score @s blingedit matches -5 run function blingedit:move_right
execute if score @s blingedit matches -6 run function blingedit:move_forward
execute if score @s blingedit matches -7 run function blingedit:move_backward
execute if score @s blingedit matches -8 run function blingedit:clone
execute if score @s blingedit matches -9 run function blingedit:fill
execute if score @s blingedit matches -10 run function blingedit:replace
execute if score @s blingedit matches -11 run function blingedit:randomize_menu
execute if score @s blingedit matches -12 run function blingedit:list_plugins
execute if score @s blingedit matches -13 run function blingedit:delete

#blingedit:options
execute if score @s blingedit matches -64 run function blingedit:particles_on
execute if score @s blingedit matches -65 run function blingedit:particles_off

#blingedit:replace
execute if score @s blingedit matches -128 run function blingedit:replace1_air

#blingedit:execute128_ln1026
execute if score @s blingedit matches -192 run function blingedit:replace2_air

#blingedit:randomize_menu
execute if score @s blingedit matches -256 run function blingedit:store_random
execute if score @s blingedit matches -257 run function blingedit:fill_random
execute if score @s blingedit matches -258 run function blingedit:replace_random

#blingedit:execute150_ln1392
execute if score @s blingedit matches -320 run function blingedit:cursor_inside
execute if score @s blingedit matches -321 run function blingedit:cursor_before

#blingedit:execute149_ln1386
execute if score @s blingedit matches -384 run function blingedit:cursor_range_5
execute if score @s blingedit matches -385 run function blingedit:cursor_range_10
execute if score @s blingedit matches -386 run function blingedit:cursor_range_15
execute if score @s blingedit matches -387 run function blingedit:cursor_range_20

#blingedit:execute079_ln661
execute if score @s blingedit matches -448 run function blingedit:move_up
execute if score @s blingedit matches -449 run function blingedit:move_down
execute if score @s blingedit matches -450 run function blingedit:move_left
execute if score @s blingedit matches -451 run function blingedit:move_right
execute if score @s blingedit matches -452 run function blingedit:move_forward
execute if score @s blingedit matches -453 run function blingedit:move_backward
execute if score @s blingedit matches -454 run function blingedit:clone_air
execute if score @s blingedit matches -455 run function blingedit:dont_clone_air
execute if score @s blingedit matches -456 run function blingedit:toggle_clone_in_place
execute if score @s blingedit matches -457 run function blingedit:clone_flip_leftright
execute if score @s blingedit matches -458 run function blingedit:clone_flip_frontback
execute if score @s blingedit matches -459 run function blingedit:clone_rotate_left
execute if score @s blingedit matches -460 run function blingedit:clone_rotate_right
execute if score @s blingedit matches -461 run function blingedit:confirm_clone
execute if score @s blingedit matches -462 run function blingedit:clone_and_repeat
execute if score @s blingedit matches -463 run function blingedit:clone_brush
execute if score @s blingedit matches -464 run function blingedit:cancel

#blingedit:replace_random
execute if score @s blingedit matches -512 run function blingedit:replace_random_air
