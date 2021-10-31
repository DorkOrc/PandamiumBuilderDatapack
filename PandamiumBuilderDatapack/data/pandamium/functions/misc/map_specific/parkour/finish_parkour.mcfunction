scoreboard players reset @s parkour
scoreboard players reset @s parkour.end

scoreboard players operation @s parkour_best_time = @s parkour_ticks

scoreboard players reset @s parkour_checkpoint
scoreboard players reset @s parkour_ticks

#

scoreboard players operation <parkour_hours> variable = @s parkour_ticks
scoreboard players operation <parkour_hours> variable /= <ticks_per_hour> variable

scoreboard players operation <parkour_minutes> variable = @s parkour_ticks
scoreboard players operation <parkour_minutes> variable /= <ticks_per_minute> variable
scoreboard players operation <parkour_minutes> variable %= <60> variable

scoreboard players operation <parkour_seconds> variable = @s parkour_ticks
scoreboard players operation <parkour_seconds> variable /= <ticks_per_second> variable
scoreboard players operation <parkour_seconds> variable %= <60> variable

execute if score <parkour_hours> variable matches 0 if score <parkour_minutes> variable matches 0..9 if score <parkour_seconds> variable matches 0..9 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_minutes>","objective":"variable"}}],":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_seconds>","objective":"variable"}}]]]
execute if score <parkour_hours> variable matches 0 if score <parkour_minutes> variable matches 0..9 if score <parkour_seconds> variable matches 10..59 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_minutes>","objective":"variable"}}],":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"}]]
execute if score <parkour_hours> variable matches 0 if score <parkour_minutes> variable matches 10..59 if score <parkour_seconds> variable matches 0..9 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_seconds>","objective":"variable"}}]]]
execute if score <parkour_hours> variable matches 0 if score <parkour_minutes> variable matches 10..59 if score <parkour_seconds> variable matches 10..59 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"}]]

execute if score <parkour_hours> variable matches 1.. if score <parkour_minutes> variable matches 0..9 if score <parkour_seconds> variable matches 0..9 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_hours>","objective":"variable"},"color":"aqua"},":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_minutes>","objective":"variable"}}],":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_seconds>","objective":"variable"}}],"!"]]
execute if score <parkour_hours> variable matches 1.. if score <parkour_minutes> variable matches 0..9 if score <parkour_seconds> variable matches 10..59 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_hours>","objective":"variable"},"color":"aqua"},":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_minutes>","objective":"variable"}}],":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"},"!"]]
execute if score <parkour_hours> variable matches 1.. if score <parkour_minutes> variable matches 10..59 if score <parkour_seconds> variable matches 0..9 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_hours>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",[{"text":"0","color":"aqua"},{"score":{"name":"<parkour_seconds>","objective":"variable"}}],"!"]]
execute if score <parkour_hours> variable matches 1.. if score <parkour_minutes> variable matches 10..59 if score <parkour_seconds> variable matches 10..59 run tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You","color":"dark_aqua"},{"text":" finished","color":"aqua"}," the parkour with a time of ",{"score":{"name":"<parkour_hours>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_minutes>","objective":"variable"},"color":"aqua"},":",{"score":{"name":"<parkour_seconds>","objective":"variable"},"color":"aqua"},"!"]]

tellraw @s ""


