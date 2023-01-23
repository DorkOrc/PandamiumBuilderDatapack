scoreboard players add @s clone_rotation 90
execute if score @s clone_rotation matches 360.. run scoreboard players remove @s clone_rotation 360
scoreboard players operation Global _id = @s blingedit.clone_display_dest_id
execute as @e[type=minecraft:armor_stand,tag=CloneDisplay] if score @s _id = Global _id run function blingedit:execute048_ln445
function blingedit:rotate_dest_horizontal
gamerule sendCommandFeedback false