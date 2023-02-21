data modify storage build:io schedule.in set value {action:"tp_origin",wait:0}
execute store result storage build:io schedule.in.source int 1 run scoreboard players get @s id
function build:utils/schedule
