function blingedit:plugin_can_run
execute if score Global box_ymin matches ..-1 run tellraw @s "The Spline plugin does not currently work below y=0. Try cloning the structure somewhere above y=0, running the Spline, then cloning it back down."
execute if score Global box_ymin matches 0.. if score Global plugin_can_run matches 1.. run function blingedit_spline:execute014_ln31
gamerule sendCommandFeedback false