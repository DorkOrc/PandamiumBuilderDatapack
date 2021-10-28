scoreboard players add @s parkour_ticks 5

scoreboard players operation <parkour_hours> variable = @s parkour_ticks
scoreboard players operation <parkour_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <parkour_minutes> variable = @s parkour_ticks
scoreboard players operation <parkour_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <parkour_minutes> variable %= <60> variable

scoreboard players operation <parkour_seconds> variable = @s parkour_ticks
scoreboard players operation <parkour_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <parkour_seconds> variable %= <60> variable

execute if score <parkour_hours> variable matches 0 run title @s actionbar [{"text":"Parkour: ","color":"dark_aqua"},{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"}]
execute unless score <parkour_hours> variable matches 0 run title @s actionbar [{"text":"Parkour: ","color":"dark_aqua"},{"score":{"name":"<parkour_hours>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"}]
