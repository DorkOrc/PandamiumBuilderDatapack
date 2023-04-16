#tellraw @a {"nbt":"queue","storage":"build:editor","color":"green"}

data modify storage build:editor this_action set from storage build:editor queue[0]
execute store result score $wait scratch run data get storage build:editor this_action.wait

execute if score $wait scratch matches 1.. run function build:impl/editor/queue/wait
execute if score $wait scratch matches 0 run function build:impl/editor/queue/do_action
