scoreboard players operation Global _id = @s _id
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global _id run scoreboard players set @s kill 0

scoreboard players operation Global _id = @s blingedit.clone_display_source_id
execute as @e[type=minecraft:armor_stand,tag=CloneDisplay] if score @s _id = Global _id run scoreboard players set @s kill 0

scoreboard players operation Global _id = @s blingedit.clone_display_dest_id
execute as @e[type=minecraft:armor_stand,tag=CloneDisplay] if score @s _id = Global _id run scoreboard players set @s kill 0
