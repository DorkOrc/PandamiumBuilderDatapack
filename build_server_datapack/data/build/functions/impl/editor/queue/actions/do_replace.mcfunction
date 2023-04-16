execute store result score $id io run data get storage build:editor this_action.player
execute as @a[predicate=build:matches_id,limit=1] run function build:impl/editor/action/replace/do_replace
