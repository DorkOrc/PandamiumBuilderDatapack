#data modify storage build:editor queue append value {action:'init_clone'}
#execute store result storage build:editor queue[-1].player int 1 run scoreboard players get @s id

function build:impl/editor/action/clone/do_clone
