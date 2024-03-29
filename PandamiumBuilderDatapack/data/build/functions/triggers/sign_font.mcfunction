# run AT @s

scoreboard players set <returned> variable 0

# Menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 1..100 run function build:misc/font/print_menu/sign_font/choose_lines
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 101 run function build:misc/font/print_menu/sign_font/line_1
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 102 run function build:misc/font/print_menu/sign_font/line_2
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 103 run function build:misc/font/print_menu/sign_font/line_3
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 104 run function build:misc/font/print_menu/sign_font/line_4
execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 105 run function build:misc/font/print_menu/sign_font/all_lines

execute if score <returned> variable matches 0 store success score <returned> variable if score @s sign_font matches 1.. run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You cannot edit signs in spectator mode!","color":"red"}]

execute if score <returned> variable matches 0 run function build:misc/raycast/block/signs/main
execute if score <returned> variable matches 0 store success score <returned> variable if score <raycast_hit_target> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" You are not looking at a sign!","color":"red"}]
execute if score <returned> variable matches 0 at @e[type=marker,tag=raycast.ray,limit=1] run function build:misc/font/sign/at_ray

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Sign Font]","color":"dark_red"},{"text":" Something went wrong! ","color":"red"},{"text":"[Debug]","color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"@s sign_font: ","color":"yellow"},{"score":{"name":"@s","objective":"sign_font"}},"\n<raycast_hit_target> variable: ",{"score":{"name":"<raycast_hit_target>","objective":"variable"}}]}}]

function build:misc/raycast/collect_garbage

