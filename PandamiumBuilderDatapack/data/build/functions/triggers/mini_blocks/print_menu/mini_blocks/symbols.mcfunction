#execute if score @s mini_blocks matches 4 run tellraw ... menu for choosing material
#execute if score @s mini_blocks matches 4 run scoreboard players set <has_printed_menu> variable 1

#execute if score <section> variable matches 300 run function build:triggers/mini_blocks/print_menu/mini_blocks/symbols/ <- material 1
#execute if score <section> variable matches 301 run function build:triggers/mini_blocks/print_menu/mini_blocks/symbols/ <- material 2
#execute if score <section> variable matches 399 run function build:triggers/mini_blocks/print_menu/mini_blocks/symbols/ <- material 100
#
# etc.

