##############
#FACING CHECK#
##############

data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "down"
execute store success score <can_face_down> variable if data entity @e[type=falling_block,limit=1,tag=set_block] {BlockState:{Properties:{"facing":"down"}}}

#tellraw @a {"nbt":"BlockState.Properties","entity":"@e[type=falling_block,limit=1,tag=set_block]","color":"blue"}

############
#ID CHANGES#
############

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:white_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:white_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:orange_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:orange_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:magenta_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:magenta_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:light_blue_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:light_blue_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:yellow_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:yellow_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:lime_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:lime_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:pink_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:pink_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:gray_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:gray_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:light_gray_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:light_gray_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:cyan_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:cyan_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:purple_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:purple_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:blue_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:blue_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:brown_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:brown_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:green_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:green_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:red_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:red_wall_banner"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:black_banner"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:black_wall_banner"

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:wall_torch"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:soul_torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:soul_wall_torch"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:redstone_torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:redstone_wall_torch"

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:skeleton_skull"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:skeleton_wall_skull"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:wither_skeleton_skull"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:wither_skeleton_wall_skull"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:zombie_head"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:zombie_wall_head"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:player_head"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:player_wall_head"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:creeper_head"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:creeper_wall_head"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dragon_head"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dragon_wall_head"

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:oak_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:oak_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:spruce_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:spruce_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:birch_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:birch_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:jungle_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:jungle_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:acacia_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:acacia_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dark_oak_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dark_oak_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:crimson_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:crimson_wall_sign"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:warped_sign"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:warped_wall_sign"

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:brain_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:brain_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:bubble_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:bubble_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:fire_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:fire_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:horn_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:horn_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:tube_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:tube_coral_wall_fan"

execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dead_brain_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dead_brain_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dead_bubble_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dead_bubble_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dead_fire_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dead_fire_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dead_horn_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dead_horn_coral_wall_fan"
execute if score <pages> variable matches 0 if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dead_tube_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Name set value "minecraft:dead_tube_coral_wall_fan"

###############
#STATE CHANGES#
###############

execute if entity @s[y_rotation=-45..45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "south"
execute if entity @s[y_rotation=45..135] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "west"
execute if entity @s[y_rotation=135..225] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "north"
execute if entity @s[y_rotation=225..315] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "east"
execute if score <can_face_down> variable matches 1 if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "up"
execute if score <can_face_down> variable matches 1 if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."facing" set value "down"

execute if entity @s[y_rotation=-45..45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "z"
execute if entity @s[y_rotation=45..135] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "x"
execute if entity @s[y_rotation=135..225] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "z"
execute if entity @s[y_rotation=225..315] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "x"
execute if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "y"
execute if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."axis" set value "y"

execute unless score <can_face_down> variable matches 1 if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."face" set value "ceiling"
execute unless score <can_face_down> variable matches 1 if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."face" set value "floor"

execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:bell"}}} run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."attachment" set value "single_wall"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:bell"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."attachment" set value "ceiling"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:bell"}}} if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."attachment" set value "floor"

execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:oak_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:spruce_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:birch_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:jungle_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:acacia_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:dark_oak_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:crimson_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:warped_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:iron_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."half" set value "top"

execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:lantern"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."hanging" set value "true"
execute if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:soul_lantern"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."hanging" set value "true"

#tellraw @a {"nbt":"BlockState.Properties","entity":"@e[type=falling_block,limit=1,tag=set_block]"}

execute if entity @s[y_rotation=-11.25..11.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "8"
execute if entity @s[y_rotation=11.25..33.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "9"
execute if entity @s[y_rotation=33.75..56.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "10"
execute if entity @s[y_rotation=56.25..78.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "11"
execute if entity @s[y_rotation=78.75..101.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "12"
execute if entity @s[y_rotation=101.25..123.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "13"
execute if entity @s[y_rotation=123.75..146.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "14"
execute if entity @s[y_rotation=146.25..168.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "15"
execute if entity @s[y_rotation=168.75..191.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "0"
execute if entity @s[y_rotation=191.25..213.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "1"
execute if entity @s[y_rotation=213.75..236.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "2"
execute if entity @s[y_rotation=236.25..258.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "3"
execute if entity @s[y_rotation=258.75..281.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "4"
execute if entity @s[y_rotation=281.25..303.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "5"
execute if entity @s[y_rotation=303.75..326.25] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "6"
execute if entity @s[y_rotation=326.25..348.75] run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."rotation" set value "7"

execute store success score <vine> variable if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:vine"}}}
execute if entity @s[x_rotation=-90..-45] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."up" set value "true"
execute if entity @s[y_rotation=-45..45,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."south" set value "true"
execute if entity @s[y_rotation=45..135,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."west" set value "true"
execute if entity @s[y_rotation=135..225,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."north" set value "true"
execute if entity @s[y_rotation=225..315,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."east" set value "true"

execute store success score <glow_lichen> variable if data storage build:set_block {EntityTemp:{BlockState:{Name:"minecraft:glow_lichen"}}}
execute if entity @s[x_rotation=45..90] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."down" set value "true"
execute if entity @s[x_rotation=-90..-45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."up" set value "true"
execute if entity @s[y_rotation=-45..45,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."south" set value "true"
execute if entity @s[y_rotation=45..135,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."west" set value "true"
execute if entity @s[y_rotation=135..225,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."north" set value "true"
execute if entity @s[y_rotation=225..315,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=set_block] BlockState.Properties."east" set value "true"
