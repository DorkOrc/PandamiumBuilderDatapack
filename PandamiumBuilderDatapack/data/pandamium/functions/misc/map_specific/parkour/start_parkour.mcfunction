scoreboard players set @s parkour_checkpoint 0
playsound entity.player.levelup player @s ~ ~ ~ 1 2

scoreboard players enable @s parkour

tellraw @s [{"text":"[Parkour]","color":"aqua"},[{"text":" You started the parkour! Run ","color":"dark_aqua"},{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}," to return to your last checkpoint!"]]
