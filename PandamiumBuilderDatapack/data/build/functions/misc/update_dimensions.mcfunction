execute in the_nether run scoreboard players set @a[x=0] in_dimension -1
execute in overworld run scoreboard players set @a[x=0] in_dimension 0
execute in the_end run scoreboard players set @a[x=0] in_dimension 1
execute in pandamium:staff_world run scoreboard players set @a[x=0] in_dimension 2
execute in build:event_world run scoreboard players set @a[x=0] in_dimension 3

advancement revoke @s only build:changed_dimension
