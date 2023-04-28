execute if score <color_index> variable matches 15 run data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"build:temp","color":"#FFEF00"}]'
execute if score <color_index> variable matches 16..17 run function build:misc/font/custom_fonts/gradient/tree/16..17
