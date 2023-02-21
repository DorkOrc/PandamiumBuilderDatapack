data modify storage build:scratch impl.schedule.action set from storage build:scratch schedule.pre[-1].action
data modify storage build:scratch impl.schedule.data set from storage build:scratch schedule.pre[-1].data

execute if data storage build:scratch impl.schedule{action:"tp_origin"} run function build:impl/schedule/action/tp_origin/main
