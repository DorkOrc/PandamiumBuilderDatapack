data modify storage pandamium:temp NBT set from entity @s
data remove storage pandamium:temp item
data modify storage pandamium:temp item set from storage pandamium:temp NBT.SelectedItem

function build:triggers/mini_blocks/purchase/mini_blocks/from_storage
