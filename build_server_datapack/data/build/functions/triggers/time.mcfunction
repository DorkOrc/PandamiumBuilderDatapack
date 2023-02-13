scoreboard players add <switch_time> variable 1
execute unless score <switch_time> variable matches 0..3 run scoreboard players set <switch_time> variable 0

execute if score <switch_time> variable matches 0 run tellraw @s [{"text":"[Switch Time]","color":"dark_green"},[{"text":" Switched the time to ","color":"green"},{"text":"morning","color":"aqua"},"!"]]
execute if score <switch_time> variable matches 1 run tellraw @s [{"text":"[Switch Time]","color":"dark_green"},[{"text":" Switched the time to ","color":"green"},{"text":"noon","color":"aqua"},"!"]]
execute if score <switch_time> variable matches 2 run tellraw @s [{"text":"[Switch Time]","color":"dark_green"},[{"text":" Switched the time to ","color":"green"},{"text":"night","color":"aqua"},"!"]]
execute if score <switch_time> variable matches 3 run tellraw @s [{"text":"[Switch Time]","color":"dark_green"},[{"text":" Switched the time to ","color":"green"},{"text":"midnight","color":"aqua"},"!"]]

execute if score <switch_time> variable matches 0 run time set 23250
execute if score <switch_time> variable matches 1 run time set noon
execute if score <switch_time> variable matches 2 run time set night
execute if score <switch_time> variable matches 3 run time set midnight
