data modify storage build:temp NBT set from entity @s

data remove storage build:temp mainhand
data modify storage build:temp mainhand set from storage build:temp NBT.SelectedItem

execute if predicate build:mainhand_mini_block_alt_item run function build:misc/mini_blocks/alt/prompt

scoreboard players set <has_given_mini_block> variable 0
execute unless predicate build:mainhand_mini_block_alt_item run function build:misc/mini_blocks/give_from_hands

execute if score <has_given_mini_block> variable matches 1 at @s run playsound ui.stonecutter.take_result master @s
execute if score <has_given_mini_block> variable matches 0 unless predicate build:mainhand_mini_block_alt_item run function build:misc/mini_blocks/print_menu
