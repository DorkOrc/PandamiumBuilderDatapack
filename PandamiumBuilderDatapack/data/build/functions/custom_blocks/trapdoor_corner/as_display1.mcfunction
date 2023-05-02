tag @s add custom_block.trapdoor_corner
tag @s add custom_block.display

data modify entity @s block_state.Name set from storage build:temp item.id

tp @s ~ ~ ~ ~ ~
data merge entity @s {block_state:{Properties:{facing:"south",half:"bottom",open:"true"}},transformation:{translation:[-0.5f,0f,-0.5f]}}

execute if score <found_item> variable matches 1 run ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
