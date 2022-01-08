scoreboard players set <has_printed_menu> variable 0

#scoreboard players add @s vote_credits 0

function build:triggers/mini_blocks/print_menu/mini_blocks/more

execute if score <has_printed_menu> variable matches 0 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
