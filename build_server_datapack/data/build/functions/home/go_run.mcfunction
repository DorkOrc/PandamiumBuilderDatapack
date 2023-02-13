function build:misc/teleport/to_scores/main
tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Teleported to ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"home"}}],"!"]
