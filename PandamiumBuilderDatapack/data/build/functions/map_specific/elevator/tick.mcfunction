scoreboard players set <elevator_exists> variable 0
execute store success score <elevator_exists> variable as @e[type=snowball,tag=elevator.engine,tag=elevator.location.mineshaft] run function build:map_specific/elevator/tick_entity
execute if score <elevator_exists> variable matches 0 if entity @a[x=-196,y=100,z=203,distance=..30,gamemode=!spectator] run function build:map_specific/elevator/create/mineshaft

scoreboard players set <elevator_exists> variable 0
execute store success score <elevator_exists> variable as @e[type=snowball,tag=elevator.engine,tag=elevator.location.maproom] run function build:map_specific/elevator/tick_entity
execute if score <elevator_exists> variable matches 0 if entity @a[x=-312,y=125,z=122,distance=..30,gamemode=!spectator] run function build:map_specific/elevator/create/maproom
