scoreboard players operation $id io = @s editor.owner_id
execute unless entity @a[predicate=build:matches_id,limit=1] run function build:utils/kill
