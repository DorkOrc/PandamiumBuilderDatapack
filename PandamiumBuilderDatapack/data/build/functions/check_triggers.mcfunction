execute if score @s spawn matches 1.. run function build:triggers/spawn
scoreboard players reset @s spawn
scoreboard players enable @s spawn

execute if score @s donator_area matches 1.. run function build:triggers/donator_area
scoreboard players reset @s donator_area
scoreboard players enable @s donator_area

execute if score <server> persistent matches 1 if score @s staff_area matches 1.. run function build:triggers/staff_area
scoreboard players reset @s staff_area
execute if score <server> persistent matches 1 run scoreboard players enable @s staff_area

execute if score @s options matches 1.. run function build:triggers/options
execute if score @s options matches ..-1 run function build:triggers/options
scoreboard players reset @s options
scoreboard players enable @s options

execute if score @s world_info matches 1.. run function build:triggers/world_info
scoreboard players reset @s world_info
scoreboard players enable @s world_info
