data modify storage build:itemblock parse.chars set value []
execute if data storage build:itemblock block_state.Properties run function build:impl/itemblock/get_block_state_display/parse/iter
