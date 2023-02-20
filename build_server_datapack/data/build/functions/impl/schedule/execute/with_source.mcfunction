execute store result score $predicates.id io run data get storage build:scratch schedule.pre[-1].source
execute as @a[predicate=build:matches_id,limit=1] at @s run function function build:impl/schedule/action/main
