# Section -1

execute if score <value_in_section> variable matches 1 store success score <has_given> variable run give @s diamond
execute if score <value_in_section> variable matches 2 store success score <has_given> variable run give @s experience_bottle 5
execute if score <value_in_section> variable matches 3 store success score <has_given> variable run give @s golden_apple
execute if score <value_in_section> variable matches 4 store success score <has_given> variable run give @s endermite_spawn_egg
execute if score <value_in_section> variable matches 5 store success score <has_given> variable run give @s enchanted_book{StoredEnchantments:[{id:'minecraft:mending',lvl:1s}]}
execute if score <value_in_section> variable matches 6 store success score <has_given> variable run give @s enchanted_golden_apple
execute if score <value_in_section> variable matches 7 store success score <has_given> variable run give @s potion{Potion:'minecraft:luck'}
execute if score <value_in_section> variable matches 8 run function build:triggers/mini_blocks/purchase/mini_blocks/from_main_hand
execute if score <value_in_section> variable matches 9 store success score <has_given> variable as @r run loot give @p[tag=running_trigger] loot pandamium:head
execute if score <value_in_section> variable matches 10 store success score <has_given> variable run loot give @s loot pandamium:head
execute if score <value_in_section> variable matches 11 store success score <has_given> variable at @s run summon shulker ~ ~ ~ {Color:16b}
execute if score <value_in_section> variable matches 12 store success score <has_given> variable in pandamium:staff_world run function build:triggers/mini_blocks/purchase/give_caves_and_cliffs_loot_bag
execute if score <value_in_section> variable matches 13 store success score <has_given> variable at @e[type=marker,tag=raycast.bedrock,limit=1] run setblock ~ ~ ~ air destroy
execute if score <value_in_section> variable matches 14 store success score <has_given> variable at @s run summon zombie_horse ~ ~ ~ {Tame:1b}
