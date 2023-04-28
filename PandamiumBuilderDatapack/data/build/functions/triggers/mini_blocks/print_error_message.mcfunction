execute store success score <displayed_error> variable if score <has_printed_menu> variable matches 1

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score <valid_option> variable matches 1 run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s vote_credits < <cost> variable run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" You do not have enough vote credits!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <gives_item> variable matches 1 if score <filled_inventory_slots> variable matches 36.. run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" Your inventory is full!","color":"red"}]

# Option-specific error messages

execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score @s mini_blocks matches -8 unless data entity @s SelectedItem run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" You must be holding an item in your main hand!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score @s mini_blocks matches -8 if score <has_given> variable matches 0 run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" Cannot mini-block-ify that item!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <buying_mini_block> variable matches 1 if score <has_given> variable matches 0 run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

#

execute unless score <displayed_error> variable matches 1 run tellraw @s [{"text":"[Mini-Blocks]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]
execute unless score <displayed_error> variable matches 1 run tellraw @s [{"text":"[debug info]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[["value = ",{"score":{"name":"@s","objective":"mini_blocks"}}],["\n<section> = ",{"score":{"name":"<section>","objective":"variable"}}],["\n<value_in_section> = ",{"score":{"name":"<value_in_section>","objective":"variable"}}],["\n<reference_value> = ",{"score":{"name":"<reference_value>","objective":"variable"}}],["\n<cost> = ",{"score":{"name":"<cost>","objective":"variable"}}],["\n<has_given> = ",{"score":{"name":"<has_given>","objective":"variable"}}]]}}]
