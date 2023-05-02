scoreboard players set <found_item> variable 0
tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"trapdoor_corner"}}}}] add source

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/trapdoor_corner/as_base

setblock ~ ~ ~ air
execute if score <found_item> variable matches 1 run setblock ~ ~ ~ barrier
execute if score <found_item> variable matches 0 run tellraw @a[tag=source,limit=1] {"text":"[Custom Blocks] Error finding trapdoor item from your off hand.","color":"red"}

tag @a remove source
