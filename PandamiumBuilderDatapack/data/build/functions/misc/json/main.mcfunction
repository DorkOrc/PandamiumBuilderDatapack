# in: storage build:json string

data modify storage build:json stack set value [{flags:{is_list:true},text:[],extra:[]}]
data modify storage build:json char set value ''
data modify storage build:json key set value ''
data modify storage build:json all_characters set value []
data modify storage build:json root_attributes set value {}
scoreboard players set <found_original_text> variable 0

scoreboard players set <state> variable 1
execute if data storage build:json string run function build:misc/json/parse/iter
execute unless score <found_original_text> variable matches 1 run data modify storage build:json all_characters append from storage build:json stack[0].text[]
execute unless score <found_original_text> variable matches 1 run data modify storage build:json all_characters append from storage build:json stack[0].extra[]

execute if score <found_original_text> variable matches 1 run function build:misc/json/resolve_original_text_characters
