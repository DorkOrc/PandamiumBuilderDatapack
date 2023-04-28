scoreboard players set <returned> variable 0

execute unless score @s replace_sign matches 1 store success score <returned> variable run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},{"text":" That is not a valid option! Valid Options: [1]","color":"red"}]
execute if score <returned> variable matches 1 run return 0

execute unless block ~ ~ ~ #all_signs store success score <returned> variable run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},{"text":" Look at a sign to perform this action!","color":"red"}]
execute if score <returned> variable matches 1 run return 0

data modify storage build:temp item set from entity @s SelectedItem
scoreboard players set <holding_writable_item> variable 0
execute if data storage build:temp item{id:'minecraft:writable_book'}.tag.pages[0] run scoreboard players set <holding_writable_item> variable 1
execute if data storage build:temp item.tag.BlockEntityTag.front_text.messages[3] run scoreboard players set <holding_writable_item> variable 1
execute if score <holding_writable_item> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},{"text":" Hold a Book and Quill or a ctrl-picked sign to perform this action!","color":"red"}]
execute if score <returned> variable matches 1 run return 0

# get info
data modify storage build:temp block_info set value {message_0:'',message_1:'',message_2:'',message_3:''}
execute if data storage build:temp item.tag.BlockEntityTag.front_text.messages[0] run data modify storage build:temp block_info.message_0 set from storage build:temp item.tag.BlockEntityTag.front_text.messages[0]
execute if data storage build:temp item.tag.BlockEntityTag.front_text.messages[1] run data modify storage build:temp block_info.message_1 set from storage build:temp item.tag.BlockEntityTag.front_text.messages[1]
execute if data storage build:temp item.tag.BlockEntityTag.front_text.messages[2] run data modify storage build:temp block_info.message_2 set from storage build:temp item.tag.BlockEntityTag.front_text.messages[2]
execute if data storage build:temp item.tag.BlockEntityTag.front_text.messages[3] run data modify storage build:temp block_info.message_3 set from storage build:temp item.tag.BlockEntityTag.front_text.messages[3]
execute if data storage build:temp item.tag.pages[0] run data modify storage build:temp block_info.message_0 set from storage build:temp item.tag.pages[0]
execute if data storage build:temp item.tag.pages[1] run data modify storage build:temp block_info.message_1 set from storage build:temp item.tag.pages[1]
execute if data storage build:temp item.tag.pages[2] run data modify storage build:temp block_info.message_2 set from storage build:temp item.tag.pages[2]
execute if data storage build:temp item.tag.pages[3] run data modify storage build:temp block_info.message_3 set from storage build:temp item.tag.pages[3]

execute if data storage build:temp item.tag.BlockEntityTag.front_text.color run data modify storage build:temp block_info.color set from storage build:temp item.tag.BlockEntityTag.front_text.color
execute if data storage build:temp item.tag.pages[4] run data modify storage build:temp block_info.color set from storage build:temp item.tag.pages[4]

execute if data storage build:temp item.tag.BlockEntityTag.front_text.has_glowing_text run data modify storage build:temp block_info.has_glowing_text set from storage build:temp item.tag.BlockEntityTag.front_text.has_glowing_text
execute if data storage build:temp item.tag.pages[5] run data modify storage build:temp block_info.has_glowing_text set from storage build:temp item.tag.pages[5]
execute if data storage build:temp block_info{has_glowing_text:'false'} run data modify storage build:temp block_info.has_glowing_text set value 0b
execute if data storage build:temp block_info{has_glowing_text:'true'} run data modify storage build:temp block_info.has_glowing_text set value 1b

execute store result score <number_of_pages> variable run data get storage item.tag.pages
execute if score <number_of_pages> variable matches 7.. run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},[{"text":" Ignored pages: 7 to ","color":"yellow"},{"score":{"name":"<number_of_pages>","objective":"variable"}},"!"]]

# apply info
execute unless data storage build:temp block_info{message_0:''} run data modify block ~ ~ ~ front_text.messages[0] set from storage build:temp block_info.message_0
execute unless data storage build:temp block_info{message_1:''} run data modify block ~ ~ ~ front_text.messages[1] set from storage build:temp block_info.message_1
execute unless data storage build:temp block_info{message_2:''} run data modify block ~ ~ ~ front_text.messages[2] set from storage build:temp block_info.message_2
execute unless data storage build:temp block_info{message_3:''} run data modify block ~ ~ ~ front_text.messages[3] set from storage build:temp block_info.message_3
execute if data storage build:temp block_info.color run data modify block ~ ~ ~ front_text.color set from storage build:temp block_info.color
execute if data storage build:temp block_info.has_glowing_text run data modify block ~ ~ ~ front_text.has_glowing_text set from storage build:temp block_info.has_glowing_text

tellraw @s [{"text":"[Replace Sign]","color":"dark_green"},{"text":" Sign text was updated!","color":"green"}]
