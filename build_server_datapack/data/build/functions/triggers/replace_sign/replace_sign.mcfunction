data remove storage build:temp SelectedItem
data remove storage build:temp BlockEntityTag

data modify storage build:temp SelectedItem set from entity @s SelectedItem

data modify storage build:temp BlockEntityTag set from storage build:temp SelectedItem.tag.BlockEntityTag
data modify storage build:temp BlockEntityTag.Text1 set from storage build:temp SelectedItem.tag.pages[0]
data modify storage build:temp BlockEntityTag.Text2 set from storage build:temp SelectedItem.tag.pages[1]
data modify storage build:temp BlockEntityTag.Text3 set from storage build:temp SelectedItem.tag.pages[2]
data modify storage build:temp BlockEntityTag.Text4 set from storage build:temp SelectedItem.tag.pages[3]

scoreboard players set <holding_writable_item> variable 0
execute if data storage build:temp BlockEntityTag.Text1 run scoreboard players set <holding_writable_item> variable 1
execute if data storage build:temp BlockEntityTag.Text2 run scoreboard players set <holding_writable_item> variable 1
execute if data storage build:temp BlockEntityTag.Text3 run scoreboard players set <holding_writable_item> variable 1
execute if data storage build:temp BlockEntityTag.Text4 run scoreboard players set <holding_writable_item> variable 1

scoreboard players set <can_run> variable 1
execute unless block ~ ~ ~ #signs run scoreboard players set <can_run> variable 0
execute unless score <holding_writable_item> variable matches 1 run scoreboard players set <can_run> variable 0

#

execute if score <can_run> variable matches 1 store result score <number_of_pages> variable if data storage build:temp SelectedItem.tag.pages[]
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 1.. store success score <do_text1> variable unless data storage build:temp {BlockEntityTag:{Text1:''}}
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 2.. store success score <do_text2> variable unless data storage build:temp {BlockEntityTag:{Text2:''}}
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 3.. store success score <do_text3> variable unless data storage build:temp {BlockEntityTag:{Text3:''}}
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 4.. store success score <do_text4> variable unless data storage build:temp {BlockEntityTag:{Text4:''}}

execute if score <can_run> variable matches 1 if score <do_text1> variable matches 1 run data modify block ~ ~ ~ Text1 set from storage build:temp BlockEntityTag.Text1
execute if score <can_run> variable matches 1 if score <do_text2> variable matches 1 run data modify block ~ ~ ~ Text2 set from storage build:temp BlockEntityTag.Text2
execute if score <can_run> variable matches 1 if score <do_text3> variable matches 1 run data modify block ~ ~ ~ Text3 set from storage build:temp BlockEntityTag.Text3
execute if score <can_run> variable matches 1 if score <do_text4> variable matches 1 run data modify block ~ ~ ~ Text4 set from storage build:temp BlockEntityTag.Text4
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 5.. run data modify block ~ ~ ~ Color set from storage build:temp SelectedItem.tag.pages[4]

execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 6.. run data modify storage build:temp GlowingText set from storage build:temp SelectedItem.tag.pages[5]
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 6.. if data storage build:temp {GlowingText:'true'} run data merge block ~ ~ ~ {GlowingText:1b}
execute if score <can_run> variable matches 1 if score <number_of_pages> variable matches 6.. if data storage build:temp {GlowingText:'false'} run data merge block ~ ~ ~ {GlowingText:0b}

#

execute if score <can_run> variable matches 1 if score @s replace_sign matches 1.. run tellraw @s [{"text":"[Replace Sign]","color":"dark_green"},{"text":" Sign text was updated!","color":"green"}]

scoreboard players set <displayed_error> variable 0
execute if score @s replace_sign matches 1.. if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless block ~ ~ ~ #signs run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},{"text":" Stand at a sign to perform this action!","color":"red"}]
execute if score @s replace_sign matches 1.. if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless data storage build:temp {SelectedItem:{id:'minecraft:writable_book'}} run tellraw @s [{"text":"[Replace Sign]","color":"dark_red"},{"text":" Hold a book and quill or written sign to perform this action!","color":"red"}]
