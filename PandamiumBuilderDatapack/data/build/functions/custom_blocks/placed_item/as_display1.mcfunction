tag @s add custom_block.placed_item
tag @s add custom_block.display

item replace entity @s container.0 from entity @a[tag=source,limit=1] weapon.offhand
execute store success score <found_item> variable if data entity @s item
execute if score <found_item> variable matches 1 store success score <found_item> variable unless data entity @s item{id:"minecraft:air"}

execute if score <found_item> variable matches 1 run data merge entity @s {billboard:"vertical",item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,0.22f,0f]}}

execute if score <found_item> variable matches 1 run ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
