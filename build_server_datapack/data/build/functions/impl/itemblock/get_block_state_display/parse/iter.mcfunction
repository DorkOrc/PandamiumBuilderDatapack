data modify storage build:itemblock parse.char set string storage build:itemblock parse.text 0 1
data modify storage build:itemblock parse.text set string storage build:itemblock parse.text 1

execute if data storage build:itemblock parse{char:':'} run data modify storage build:itemblock parse.chars append value '='
execute unless data storage build:itemblock parse{char:':'} unless data storage build:itemblock parse{char:'\\'} unless data storage build:itemblock parse{char:'"'} unless data storage build:itemblock parse{char:'}'} run data modify storage build:itemblock parse.chars append from storage build:itemblock parse.char

execute unless data storage build:itemblock parse{char:'}'} unless data storage build:itemblock parse{text:''} run function build:impl/itemblock/get_block_state_display/parse/iter
