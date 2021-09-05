scoreboard players operation Global vol = Global box_size_x
scoreboard players operation Global vol *= Global box_size_y
scoreboard players operation Global vol *= Global box_size_z
title @s actionbar ["Size: ",{"score":{"name":"Global","objective":"box_size_x"},"color":"gold","bold":true},"x",{"score":{"name":"Global","objective":"box_size_y"},"color":"gold","bold":true},"x",{"score":{"name":"Global","objective":"box_size_z"},"color":"gold","bold":true}," Volume: ",{"score":{"name":"Global","objective":"vol"},"color":"gold","bold":true}]