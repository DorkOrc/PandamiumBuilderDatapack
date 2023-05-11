data remove storage build:temp string
data modify storage build:temp string set from block ~ ~ ~ Book.tag.pages[0]

data modify storage build:temp config set value {bg:1073741824,scale:1.0f,x_translation:0.0f,y_translation:1.5f,z_translation:0.0f}

scoreboard players set <continue> variable 0
scoreboard players set <error> variable 0
scoreboard players set <state> variable 0
scoreboard players set <index_in_value> variable -1
execute if data storage build:temp string run function build:custom_blocks/text_display_manager/parse_config/loop

execute if score <error> variable matches 1 run tellraw @a {"text":"text_display_manager: An error occurred while parsing the config.","color":"red"}
