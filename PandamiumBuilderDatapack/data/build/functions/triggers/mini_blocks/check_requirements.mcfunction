scoreboard players set <can_buy> variable 1

execute if score <valid_option> variable matches 0 run scoreboard players set <can_buy> variable 0

# Count filled inventory slots
scoreboard players set <gives_item> variable 0
execute unless score @s mini_blocks matches -9 unless score @s mini_blocks matches -12 run scoreboard players set <gives_item> variable 1
execute if score <gives_item> variable matches 1 run function build:misc/count_filled_inventory_slots

# Check requirements
#execute if score <can_buy> variable matches 1 if score @s vote_credits < <cost> variable run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run scoreboard players set <can_buy> variable 0
#execute if score <can_buy> variable matches 1 if score @s jailed matches 1.. run scoreboard players set <can_buy> variable 0
#execute if score <can_buy> variable matches 1 if score @s parkour_checkpoint matches 0.. run scoreboard players set <can_buy> variable 0
#execute if score <can_buy> variable matches 1 if entity @s[gamemode=spectator] run scoreboard players set <can_buy> variable 0

execute if score <can_buy> variable matches 1 if score @s mini_blocks matches -9 unless score <player_count> variable matches 10.. run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s mini_blocks matches -11 if score @s in_spawn matches 1 run scoreboard players set <can_buy> variable 0
execute if score <can_buy> variable matches 1 if score @s mini_blocks matches -13 run function build:triggers/mini_blocks/check_can_break_bedrock
execute if score <can_buy> variable matches 1 if score @s mini_blocks matches -14 if score @s in_spawn matches 1 run scoreboard players set <can_buy> variable 0

# (try) Give item
scoreboard players set <has_given> variable 0
scoreboard players set <has_printed_menu> variable 0
execute if score <can_buy> variable matches 1 if score <section> variable matches -1 run function build:triggers/mini_blocks/purchase/misc
execute if score <can_buy> variable matches 1 if score <section> variable matches -2 run function build:triggers/mini_blocks/purchase/mini_blocks/more
execute if score <can_buy> variable matches 1 if score <section> variable matches -3 run function build:triggers/mini_blocks/purchase/mini_blocks/cultural
execute if score <can_buy> variable matches 1 if score <section> variable matches -200..-101 run function build:triggers/mini_blocks/purchase/mini_blocks/symbol
execute if score <can_buy> variable matches 1 if score <section> variable matches ..-201 run function build:triggers/mini_blocks/purchase/mini_blocks/variant

execute if score <can_buy> variable matches 1 store success score <can_buy> variable if score <has_given> variable matches 1

# Mini-block advancement
#execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 run advancement grant @s only pandamium:pandamium/mini_blocks/buy_mini_block
execute if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s

# Remove credits
#execute if score <can_buy> variable matches 1 run scoreboard players operation @s vote_credits -= <cost> variable

# Display success
execute if score <can_buy> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Vote Shop]","color":"dark_green"},{"text":" Purchase successful!","color":"aqua"}," You have ",{"text":"0","bold":true,"color":"aqua"}," vote credit",{"text":"(s)","color":"gray","italic":true},"! ",[{"text":"(-","color":"red"},{"score":{"objective":"variable","name":"<cost>"},"bold":true},")"]]

# Display an error message
execute if score <can_buy> variable matches 0 run function build:triggers/mini_blocks/display_error_message
