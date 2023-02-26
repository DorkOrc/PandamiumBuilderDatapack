data modify storage build:io entry set value {action:"tp_origin",wait:1}
execute store result storage build:io entry.source int 1 run scoreboard players get @s id
function build:utils/schedule
