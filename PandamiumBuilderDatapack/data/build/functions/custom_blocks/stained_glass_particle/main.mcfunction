function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"stained_glass_particle"}}}}] add source

data remove storage build:temp item
data modify storage build:temp item set from entity @a[tag=source,limit=1] Inventory[{Slot:-106b}]

scoreboard players set <found_item> variable 0
execute if data storage build:temp item{id:"minecraft:white_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:light_gray_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:gray_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:black_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:brown_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:red_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:orange_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:yellow_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:lime_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:green_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:cyan_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:light_blue_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:blue_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:purple_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:magenta_stained_glass"} run scoreboard players set <found_item> variable 1
execute if data storage build:temp item{id:"minecraft:pink_stained_glass"} run scoreboard players set <found_item> variable 1

execute if score <found_item> variable matches 0 run setblock ~ ~ ~ air
execute if score <found_item> variable matches 0 run tellraw @a[tag=source,limit=1] {"text":"[Custom Blocks] Error finding stained glass item from your off hand.","color":"red"}
execute if score <found_item> variable matches 0 run tag @a remove source
execute if score <found_item> variable matches 0 run return 0

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/stained_glass_particle/as_base

setblock ~ ~ ~ barrier

tag @a remove source
