execute store result score <home_x> variable run data get entity @s Pos[0]
execute store result score <home_y> variable run data get entity @s Pos[1]
execute store result score <home_z> variable run data get entity @s Pos[2]
scoreboard players operation <home_d> variable = @s in_dimension

execute if score @s sethome matches -1 run function build:home/save/save_1
execute if score @s sethome matches -2 run function build:home/save/save_2
execute if score @s sethome matches -3 run function build:home/save/save_3
execute if score @s sethome matches -4 run function build:home/save/save_4
execute if score @s sethome matches -5 run function build:home/save/save_5
execute if score @s sethome matches -6 run function build:home/save/save_6
execute if score @s sethome matches -7 run function build:home/save/save_7
execute if score @s sethome matches -8 run function build:home/save/save_8
execute if score @s sethome matches -9 run function build:home/save/save_9
execute if score @s sethome matches -10 run function build:home/save/save_10

scoreboard players set <-1> variable -1
scoreboard players operation @s sethome *= <-1> variable

execute if score <home_d> variable matches -1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"Nether","color":"aqua"},"!"]
execute if score <home_d> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"Overworld","color":"aqua"},"!"]
execute if score <home_d> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"End","color":"aqua"},"!"]
execute if score <home_d> variable matches 3 run tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Set ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"sethome"}}]," at ",{"score":{"name":"<home_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_y>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<home_z>","objective":"variable"},"color":"aqua"}," in the ",{"text":"Event Overworld","color":"aqua"},"!"]
