scoreboard players set <found_item> variable 0
execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/placed_item/as_base

execute if score <found_item> variable matches 1 run setblock ~ ~ ~ barrier
execute if score <found_item> variable matches 0 run setblock ~ ~ ~ air
execute if score <found_item> variable matches 0 run tellraw @a {"text":"error finding item from nearest player","color":"red"}
