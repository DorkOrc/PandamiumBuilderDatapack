# run AT @s

scoreboard players set <returned> variable 0
tag @s add source
scoreboard players set <sound> variable 0

# Menu
execute if score <returned> variable matches 0 if score @s pose matches 1.. store success score <returned> variable run function build:misc/pose/print_menu

# Check if can run
execute if score <returned> variable matches 0 if entity @s[predicate=build:in_spawn] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger at spawn!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[gamemode=spectator] store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use this trigger in spectator mode!","color":"red"}]

scoreboard players operation <pose> variable = @s pose

execute if score <returned> variable matches 0 run function build:misc/raycast/entity/armor_stand/main
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 1 positioned ~-8 ~-8 ~-8 as @e[type=armor_stand,dx=16,dy=16,dz=16,tag=raycast.target,tag=!pose.locked,limit=1] at @s run function build:misc/pose/as_target
execute if score <returned> variable matches 0 if score <raycast_hit_target> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You are not looking at a poseable armour stand!","color":"red"}]

execute if score <returned> variable matches 1 if score <sound> variable matches 1.. run function build:misc/pose/sound
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Pose] ","color":"dark_red"},{"text":"That is not a valid option!","color":"red"}]

tag @s remove source
scoreboard players reset @s pose
scoreboard players enable @s pose
