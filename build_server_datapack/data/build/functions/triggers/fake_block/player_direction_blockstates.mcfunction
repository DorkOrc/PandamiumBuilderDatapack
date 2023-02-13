##############
#FACING CHECK#
##############

data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "down"
execute store success score <can_face_down> variable if data entity @e[type=falling_block,limit=1,tag=fake_block] {BlockState:{Properties:{"facing":"down"}}}

#tellraw @a {"nbt":"BlockState.Properties","entity":"@e[type=falling_block,limit=1,tag=fake_block]","color":"blue"}

############
#ID CHANGES#
############

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:wall_torch"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:wall_torch"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:wall_torch"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:soul_torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:soul_wall_torch"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:redstone_torch"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:redstone_wall_torch"

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:brain_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:brain_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:bubble_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:bubble_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:fire_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:fire_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:horn_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:horn_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:tube_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:tube_coral_wall_fan"

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dead_brain_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:dead_brain_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dead_bubble_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:dead_bubble_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dead_fire_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:dead_fire_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dead_horn_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:dead_horn_coral_wall_fan"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dead_tube_coral_fan"}}} unless entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Name set value "minecraft:dead_tube_coral_wall_fan"

###############
#STATE CHANGES#
###############

execute if entity @s[y_rotation=-45..45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "south"
execute if entity @s[y_rotation=45..135] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "west"
execute if entity @s[y_rotation=135..225] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "north"
execute if entity @s[y_rotation=225..315] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "east"
execute if score <can_face_down> variable matches 1 if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "up"
execute if score <can_face_down> variable matches 1 if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."facing" set value "down"

execute if entity @s[y_rotation=-45..45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "z"
execute if entity @s[y_rotation=45..135] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "x"
execute if entity @s[y_rotation=135..225] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "z"
execute if entity @s[y_rotation=225..315] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "x"
execute if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "y"
execute if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."axis" set value "y"

execute unless score <can_face_down> variable matches 1 if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."face" set value "ceiling"
execute unless score <can_face_down> variable matches 1 if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."face" set value "floor"

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:bell"}}} run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."attachment" set value "single_wall"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:bell"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."attachment" set value "ceiling"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:bell"}}} if entity @s[x_rotation=45..90] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."attachment" set value "floor"

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:oak_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:spruce_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:birch_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:jungle_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:acacia_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:dark_oak_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:crimson_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:warped_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:iron_trapdoor"}}} if entity @s[x_rotation=-90..0] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."half" set value "top"

execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:lantern"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."hanging" set value "true"
execute if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:soul_lantern"}}} if entity @s[x_rotation=-90..-45] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."hanging" set value "true"

#tellraw @a {"nbt":"BlockState.Properties","entity":"@e[type=falling_block,limit=1,tag=fake_block]"}

execute if entity @s[y_rotation=-11.25..11.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "8"
execute if entity @s[y_rotation=11.25..33.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "9"
execute if entity @s[y_rotation=33.75..56.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "10"
execute if entity @s[y_rotation=56.25..78.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "11"
execute if entity @s[y_rotation=78.75..101.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "12"
execute if entity @s[y_rotation=101.25..123.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "13"
execute if entity @s[y_rotation=123.75..146.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "14"
execute if entity @s[y_rotation=146.25..168.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "15"
execute if entity @s[y_rotation=168.75..191.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "0"
execute if entity @s[y_rotation=191.25..213.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "1"
execute if entity @s[y_rotation=213.75..236.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "2"
execute if entity @s[y_rotation=236.25..258.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "3"
execute if entity @s[y_rotation=258.75..281.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "4"
execute if entity @s[y_rotation=281.25..303.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "5"
execute if entity @s[y_rotation=303.75..326.25] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "6"
execute if entity @s[y_rotation=326.25..348.75] run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."rotation" set value "7"

execute store success score <vine> variable if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:vine"}}}
execute if entity @s[x_rotation=-90..-45] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."up" set value "true"
execute if entity @s[y_rotation=-45..45,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."south" set value "true"
execute if entity @s[y_rotation=45..135,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."west" set value "true"
execute if entity @s[y_rotation=135..225,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."north" set value "true"
execute if entity @s[y_rotation=225..315,x_rotation=-44..90] if score <vine> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."east" set value "true"

execute store success score <glow_lichen> variable if data storage build:fake_block {Entity:{BlockState:{Name:"minecraft:glow_lichen"}}}
execute if entity @s[x_rotation=45..90] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."down" set value "true"
execute if entity @s[x_rotation=-90..-45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."up" set value "true"
execute if entity @s[y_rotation=-45..45,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."south" set value "true"
execute if entity @s[y_rotation=45..135,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."west" set value "true"
execute if entity @s[y_rotation=135..225,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."north" set value "true"
execute if entity @s[y_rotation=225..315,x_rotation=-44..45] if score <glow_lichen> variable matches 1 run data modify entity @e[type=falling_block,limit=1,tag=fake_block] BlockState.Properties."east" set value "true"
