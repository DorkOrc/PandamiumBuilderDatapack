data modify storage build:json all_characters append from storage build:json original_text_characters[0]
data remove storage build:json original_text_characters[0]
data remove storage build:json original_text_characters[0]
data remove storage build:json original_text_characters[0]
data remove storage build:json original_text_characters[0]
execute if data storage build:json original_text_characters[0] run function build:misc/json/resolve_original_text_characters_iter
