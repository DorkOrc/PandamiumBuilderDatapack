data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"3 0 0","interpret":true},{"nbt":"characters[0]","storage":"build:temp"}]'

data remove storage build:temp characters[0]
execute if data storage build:temp characters[0] run function build:misc/font/custom_fonts/reset/loop
