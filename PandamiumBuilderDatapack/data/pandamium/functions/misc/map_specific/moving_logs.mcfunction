fill -19 -33 125 -19 -33 134 air 

execute if score <log_timer> variable matches 1 run fill -19 -33 134 -19 -33 131 spruce_log[axis=z]
execute if score <log_timer> variable matches 2 run fill -19 -33 133 -19 -33 130 spruce_log[axis=z]
execute if score <log_timer> variable matches 3 run fill -19 -33 132 -19 -33 129 spruce_log[axis=z]
execute if score <log_timer> variable matches 4 run fill -19 -33 131 -19 -33 128 spruce_log[axis=z]
execute if score <log_timer> variable matches 5 run fill -19 -33 130 -19 -33 127 spruce_log[axis=z]
execute if score <log_timer> variable matches 6 run fill -19 -33 129 -19 -33 126 spruce_log[axis=z]
execute if score <log_timer> variable matches 7..8 run fill -19 -33 128 -19 -33 125 spruce_log[axis=z]
execute if score <log_timer> variable matches 9 run fill -19 -33 129 -19 -33 126 spruce_log[axis=z]
execute if score <log_timer> variable matches 10 run fill -19 -33 130 -19 -33 127 spruce_log[axis=z]
execute if score <log_timer> variable matches 11 run fill -19 -33 131 -19 -33 128 spruce_log[axis=z]
execute if score <log_timer> variable matches 12 run fill -19 -33 132 -19 -33 129 spruce_log[axis=z]
execute if score <log_timer> variable matches 13 run fill -19 -33 133 -19 -33 130 spruce_log[axis=z]
execute if score <log_timer> variable matches 14 run fill -19 -33 134 -19 -33 131 spruce_log[axis=z]

execute if score <log_timer> variable matches 2..7 as @a[x=-19,y=-33,z=125,dx=0,dy=0,dz=9] at @s run tp ~ ~ ~-1
execute if score <log_timer> variable matches 9..14 as @a[x=-19,y=-33,z=125,dx=0,dy=0,dz=9] at @s run tp ~ ~ ~-1

scoreboard players add <log_timer> variable 1
execute unless score <log_timer> variable matches 1..14 run scoreboard players set <log_timer> variable 1

