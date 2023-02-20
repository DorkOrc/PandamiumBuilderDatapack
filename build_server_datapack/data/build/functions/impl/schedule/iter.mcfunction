execute store result score $impl.schedule.wait scratch run data get storage build:scratch schedule.pre[-1].wait

execute if score $impl.schedule.wait scratch matches ..0 run function build:impl/schedule/execute/main
execute unless score $impl.schedule.wait scratch matches ..0 run data modify storage build:global schedule prepend from storage build:scratch schedule.pre[-1]

data remove storage build:scratch schedule.pre[-1]
execute if data storage build:scratch schedule.pre[0] run function build:impl/schedule/iter
