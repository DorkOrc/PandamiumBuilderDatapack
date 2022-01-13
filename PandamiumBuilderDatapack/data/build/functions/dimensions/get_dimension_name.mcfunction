# Input: <dim> variable

data merge storage build:temp {Dimension:'unrecognised-dimension'}

execute if score <dim> variable matches -100 run data merge storage build:temp {Dimension:'minecraft:overworld'}
execute if score <dim> variable matches -99 run data merge storage build:temp {Dimension:'minecraft:the_nether'}
execute if score <dim> variable matches -98 run data merge storage build:temp {Dimension:'minecraft:the_end'}
execute if score <dim> variable matches -97 run data merge storage build:temp {Dimension:'pandamium:staff_world'}

execute if score <dim> variable matches 0 run data merge storage build:temp {Dimension:'build:release/overworld'}
execute if score <dim> variable matches 1 run data merge storage build:temp {Dimension:'build:release/the_nether'}

execute if score <dim> variable matches 100 run data merge storage build:temp {Dimension:'build:overworld/overworld'}
execute if score <dim> variable matches 101 run data merge storage build:temp {Dimension:'build:overworld/the_nether'}

execute if score <dim> variable matches 200 run data merge storage build:temp {Dimension:'build:event_world'}
