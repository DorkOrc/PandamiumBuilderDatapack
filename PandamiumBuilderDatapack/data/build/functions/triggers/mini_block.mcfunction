data remove storage build:mini_blocks mainhand
data modify storage build:mini_blocks mainhand set from entity @s SelectedItem
data remove storage build:mini_blocks offhand
data modify storage build:mini_blocks offhand set from entity @s Inventory[{Slot:-106b}]

function build:misc/give_mini_block
