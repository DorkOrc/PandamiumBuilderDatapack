execute store success score <can_run> variable if block ~ ~ ~ #signs

execute if score <can_run> variable matches 1 run data modify storage build:temp pages set value ['{"text":""}','{"text":""}','{"text":""}','{"text":""}','black','false']
execute if score <can_run> variable matches 1 run data modify storage build:temp BlockData set from block ~ ~ ~
execute if score <can_run> variable matches 1 run data modify storage build:temp pages[0] set from storage build:temp BlockData.Text1
execute if score <can_run> variable matches 1 run data modify storage build:temp pages[1] set from storage build:temp BlockData.Text2
execute if score <can_run> variable matches 1 run data modify storage build:temp pages[2] set from storage build:temp BlockData.Text3
execute if score <can_run> variable matches 1 run data modify storage build:temp pages[3] set from storage build:temp BlockData.Text4
execute if score <can_run> variable matches 1 run data modify storage build:temp pages[4] set from storage build:temp BlockData.Color
execute if score <can_run> variable matches 1 if data storage build:temp {BlockData:{GlowingText:1b}} run data modify storage build:temp pages[5] set value 'true'

execute if score <can_run> variable matches 1 in pandamium:staff_world run setblock 0 0 0 shulker_box
execute if score <can_run> variable matches 1 in pandamium:staff_world run data modify block 0 0 0 Items set value [{id:'minecraft:writable_book',Count:1b,Slot:0b}]
execute if score <can_run> variable matches 1 in pandamium:staff_world run data modify block 0 0 0 Items[0].tag.pages set from storage build:temp pages
execute if score <can_run> variable matches 1 in pandamium:staff_world run loot give @s mine 0 0 0 air{drop_contents:1b}
