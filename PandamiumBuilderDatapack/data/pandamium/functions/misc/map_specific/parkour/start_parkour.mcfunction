scoreboard players set @s parkour_checkpoint 0
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2

scoreboard players enable @s parkour
scoreboard players enable @s parkour.end
tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You started the parkour!\n• Run ","color":"dark_aqua"},{"text":"/trigger parkour","color":"aqua"}," to return to your last checkpoint.\n• Run ",{"text":"/trigger parkour.end","color":"aqua"}," to quit the parkour course ",{"text":"(stops tracking time and resets checkpoints)","color":"gray"}]]
