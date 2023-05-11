execute if score <is_string> variable matches 0 run function build:custom_blocks/text_display_manager/parse_config/instruction_terminator/interpret_numerical

execute if data storage build:temp {key:'bg'} run data modify storage build:temp config.bg set from storage build:temp value
execute if data storage build:temp {key:'scale'} run data modify storage build:temp config.scale set from storage build:temp value
execute if data storage build:temp {key:'x_translation'} run data modify storage build:temp config.x_translation set from storage build:temp value
execute if data storage build:temp {key:'y_translation'} run data modify storage build:temp config.y_translation set from storage build:temp value
execute if data storage build:temp {key:'z_translation'} run data modify storage build:temp config.z_translation set from storage build:temp value
execute if data storage build:temp {key:'billboard'} run data modify storage build:temp config.billboard set from storage build:temp value
execute if data storage build:temp {key:'yaw'} run data modify storage build:temp config.yaw set from storage build:temp value
execute if data storage build:temp {key:'pitch'} run data modify storage build:temp config.pitch set from storage build:temp value
execute if data storage build:temp {key:'roll'} run data modify storage build:temp config.roll set from storage build:temp value

#tellraw @a ["",{"nbt":"key","storage":"build:temp"}," <- ",{"nbt":"value","storage":"build:temp"}," (",{"score":{"name":"<value_digits>","objective":"variable"}},", ",{"score":{"name":"<scale_back>","objective":"variable"}},"); last=",{"score":{"name":"<index_in_value>","objective":"variable"}}]

scoreboard players set <continue> variable 0
scoreboard players set <index_in_value> variable -1
scoreboard players set <next_state> variable 0
data remove storage build:temp key
