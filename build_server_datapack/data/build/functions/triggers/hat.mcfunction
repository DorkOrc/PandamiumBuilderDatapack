# run IN pandamium:staff_world

setblock 0 0 0 shulker_box

item replace block 0 0 0 container.0 from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from block 0 0 0 container.0

tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped head and mainhand!","color":"green"}]
