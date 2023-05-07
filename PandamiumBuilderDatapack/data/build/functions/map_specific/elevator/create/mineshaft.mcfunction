data modify storage build:temp location_tag set value "elevator.location.mineshaft"

execute as @e[tag=elevator.location.mineshaft,tag=elevator.engine] run function build:map_specific/elevator/destroy
kill @e[tag=elevator.location.mineshaft]
execute positioned -196 79 203 run function build:map_specific/elevator/create/main
