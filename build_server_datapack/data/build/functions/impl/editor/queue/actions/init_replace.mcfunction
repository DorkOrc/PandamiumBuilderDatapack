execute in build:storage run fill -1 -1 -1 3 1 1 bedrock
execute in build:storage run setblock 0 0 0 air
execute in build:storage run setblock 2 0 0 air

data modify storage build:editor nbt set value {Time:1}
data modify storage build:editor nbt.BlockState set from storage build:editor this_action.block_1
execute unless data storage build:editor this_action.block_1{Name:'minecraft:air'} in build:storage positioned 0 0 0 summon falling_block run data modify entity @s {} merge from storage build:editor nbt

data modify storage build:editor nbt set value {Time:1}
data modify storage build:editor nbt.BlockState set from storage build:editor this_action.block_2
execute unless data storage build:editor this_action.block_2{Name:'minecraft:air'} in build:storage positioned 2 0 0 summon falling_block run data modify entity @s {} merge from storage build:editor nbt

data modify storage build:editor queue prepend value {action:'do_replace'}
data modify storage build:editor queue[0].player set from storage build:editor this_action.player
