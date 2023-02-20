data modify storage build:scratch schedule.pre set from storage build:global schedule
data modify storage build:global schedule set value []
execute if data storage build:scratch schedule.pre[0] run function build:impls/schedule/iter
