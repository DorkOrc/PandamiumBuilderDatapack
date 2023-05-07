# as engine
execute at @s align xyz run tp ~.5 ~0.8125 ~.5
execute at @s align xyz run place template pandamium:elevator ~-1 ~-1 ~-1
tag @s remove elevator.is_moving
tag @s remove elevator.moving_down
tag @s remove elevator.moving_up
data modify entity @s Motion set value [0d,0d,0d]
execute on passengers on passengers run data modify entity @s[type=block_display] transformation.scale set value [0f,0f,0f]
execute on passengers on passengers run ride @s[type=player] dismount
