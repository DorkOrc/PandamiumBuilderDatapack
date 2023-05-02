tag @s add custom_block.trapdoor_corner
tag @s add custom_block.display

data modify entity @s block_state.Name set from storage build:temp item.id

tp @s ~ ~ ~ ~90 ~
data merge entity @s {block_state:{Properties:{facing:"south",half:"bottom",open:"true"}},transformation:{scale:[0.9998f,0.9998f,1.0001f],translation:[-0.4999f,0.0001f,-0.5001f]}}

execute if score <found_item> variable matches 1 run ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
