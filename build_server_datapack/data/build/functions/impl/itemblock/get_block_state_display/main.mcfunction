execute in build:storage run setblock 0 1 0 oak_sign
execute in build:storage run data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"block_state.Properties","storage":"build:itemblock"}'
execute in build:storage run data modify storage build:itemblock parse.text set string block 0 1 0 front_text.messages[0] 10
function build:impl/itemblock/get_block_state_display/parse/main

data modify storage build:itemblock parse.text2 set string storage build:itemblock block_state.Name 10
execute if data storage build:itemblock block_state.Properties in build:storage run data modify block 0 1 0 front_text.messages[1] set value '[{"nbt":"parse.text2","storage":"build:itemblock","color":"yellow"},[{"text":"[","color":"gray"},{"nbt":"parse.chars[]","storage":"build:itemblock","separator":""},"]"]]'
execute unless data storage build:itemblock block_state.Properties in build:storage run data modify block 0 1 0 front_text.messages[1] set value '[{"nbt":"parse.text2","storage":"build:itemblock","color":"yellow"}]'
execute in build:storage run data modify storage build:itemblock text set from block 0 1 0 front_text.messages[1]
