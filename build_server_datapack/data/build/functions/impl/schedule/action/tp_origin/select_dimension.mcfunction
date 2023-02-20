data modify storage build:scratch schedule.action set from storage build:scratch schedule.pre[-1].action

execute if data storage build:scratch schedule{action:"tp_origin"} run function build:impl/schedule/action/tp_origin/main
