execute store result score $matches_id.id predicate.in run data get storage build:scratch impl.schedule.pre[-1].source
execute as @a[predicate=build:matches_id,limit=1] at @s run function build:impl/schedule/action/main
