data modify storage build:scratch impl.schedule.pre set from storage build:global schedule
data modify storage build:global schedule set value []
execute if data storage build:scratch impl.schedule.pre[0] run function build:impl/schedule/iter
