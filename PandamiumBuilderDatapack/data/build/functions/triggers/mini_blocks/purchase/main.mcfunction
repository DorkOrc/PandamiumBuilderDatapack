execute if score <section> variable matches -1 run function build:triggers/mini_blocks/purchase/misc
execute if score <section> variable matches -2 run function build:triggers/mini_blocks/purchase/mini_blocks/more
execute if score <section> variable matches ..-201 run function build:triggers/mini_blocks/purchase/mini_blocks/variant

execute store success score <can_buy> variable if score <has_given> variable matches 1
