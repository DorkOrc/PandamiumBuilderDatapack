data modify storage build:json string set from storage build:temp Text
function build:misc/json/main
data modify storage build:temp characters set from storage build:json all_characters
data modify storage build:temp coloured_characters set value []

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"all_characters","storage":"build:json"},"§"]}}]}}'

execute store result score <max_character_index> variable run data get storage build:temp characters
scoreboard players remove <max_character_index> variable 1

scoreboard players set <n> variable 0
execute store result score <last_character_index> variable run data get storage build:json all_characters
scoreboard players remove <last_character_index> variable 1
