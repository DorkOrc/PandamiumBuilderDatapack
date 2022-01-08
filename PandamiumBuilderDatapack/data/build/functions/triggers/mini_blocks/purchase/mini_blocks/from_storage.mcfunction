scoreboard players set <has_printed_menu> variable 0
function build:triggers/mini_blocks/print_menu/mini_blocks/variant

execute unless score <has_printed_menu> variable matches 1 if data storage pandamium:temp item.id run function build:triggers/mini_blocks/purchase/mini_blocks/from_storage/give
