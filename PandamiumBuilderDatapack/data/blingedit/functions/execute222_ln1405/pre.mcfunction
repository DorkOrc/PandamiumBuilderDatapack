execute unless score @s cursor_range matches 0.. run scoreboard players set @s cursor_range 5
execute unless score @s cursor_inside matches 0.. run scoreboard players set @s cursor_inside 1
# Make sure there's a value in edit
execute unless score @s edit matches 1.. run scoreboard players set @s edit 0
scoreboard players operation Global mai_scratch1 = @s edit
scoreboard players operation @s prev_edit = Global mai_scratch1

scoreboard players set @s offhand 0
execute if predicate blingedit:wand_offhand run scoreboard players set @s offhand 1
scoreboard players operation @s edit = @s offhand
execute if predicate blingedit:wand_mainhand run scoreboard players set @s edit 1
scoreboard players operation @s carrot_on_stick = @s edit

scoreboard players set Global click 0
execute at @s anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function blingedit:execute157_ln1423
execute if score @s right_click matches 1.. run scoreboard players set Global click 1
scoreboard players set @s disp_plugins 0
execute if score @s prime_plugins matches 1.. run function blingedit:execute158_ln1439
execute if score @s edit matches 1.. unless score @s prev_edit matches 1.. run function blingedit:execute163_ln1445
execute if score @s prev_edit matches 1.. unless score @s edit matches 1.. run function blingedit:execute164_ln1469
execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. if score @s particles matches 1.. run function blingedit:execute167_ln1483
execute if score @s state matches 1..1 run function blingedit:execute171_ln1502
execute as @s run function blingedit:get_minmax
execute if score Global has_box matches 1.. run function blingedit:execute172_ln1519
execute as @s run function blingedit:get_dest_minmax
execute if score Global has_dest_box matches 1.. run function blingedit:execute175_ln1525
execute unless score Global has_dest_box matches 1.. run function blingedit:execute176_ln1537
execute if score @s state matches 3..3 run function blingedit:execute179_ln1542
execute if score @s state matches 4..4 run function blingedit:execute195_ln1555
execute if score @s state matches 8..8 run function blingedit:execute198_ln1602
scoreboard players set Global move_dest 0
execute if score @s state matches 9..9 run scoreboard players set Global move_dest 1
execute if score @s state matches 11..11 run scoreboard players set Global move_dest 1
execute if score Global move_dest matches 1.. run function blingedit:execute204_ln1619
execute if score @s state matches 5..5 at @s unless block ~ ~ ~ air run function blingedit:execute211_ln1647
execute if score @s state matches 6..6 at @s unless block ~ ~ ~ air as @s run function blingedit:tell_replace2
execute if score @s state matches 7..7 at @s unless block ~ ~ ~ air as @s run function blingedit:perform_replace
execute if score @s state matches 10..10 at @s unless block ~ ~ ~ air run function blingedit:execute212_ln1706

execute if score @s edit matches 1.. run function blingedit:execute222_ln1405/post