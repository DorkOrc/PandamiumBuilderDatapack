scoreboard players set <can_buy> variable 1
scoreboard players set <mob_cannot_spawn> variable 0

execute if score <valid_option> variable matches 0 run scoreboard players set <can_buy> variable 0

# Count filled inventory slots
# `build:misc/count_filled_inventory_slots` sets `build:temp count.nbt` from entity @s, and returns <filled_inventory_slots> variable
scoreboard players set <gives_item> variable 0
execute unless score @s mini_blocks matches -11 unless score @s mini_blocks matches -13 unless score @s mini_blocks matches -14 run scoreboard players set <gives_item> variable 1

data remove storage build:temp mini_blocks.selected_item
execute if score <gives_item> variable matches 1 run function build:misc/count_filled_inventory_slots
execute if score <gives_item> variable matches 1 run data modify storage build:temp mini_blocks.selected_item set from entity @s SelectedItem

# Check requirements
execute if score <can_buy> variable matches 1 if score <gives_item> variable matches 1 if score <empty_inventory_slots> variable matches 0 run scoreboard players set <can_buy> variable 0

# (try) Give item
scoreboard players set <has_given> variable 0
scoreboard players set <has_printed_menu> variable 0
execute if score <can_buy> variable matches 1 run function build:triggers/mini_blocks/purchase/main

# Mini-block advancement
execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 run advancement grant @s only build:build/mini_blocks/buy_mini_block
execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s

# Remove credits
execute if score <can_buy> variable matches 1 run scoreboard players operation @s vote_credits -= <cost> variable

# Display success
execute if score <can_buy> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Mini-Blocks]","color":"dark_green"},{"text":" Purchase successful","color":"aqua"},"! You now have ",{"text":"0","bold":true,"color":"aqua"}," vote credit",{"text":"(s)","color":"gray"},"! ",[{"text":"(-","color":"red"},{"score":{"objective":"variable","name":"<cost>"},"bold":true},")"]]

# Display an error message
execute if score <can_buy> variable matches 0 run function build:triggers/mini_blocks/print_error_message
