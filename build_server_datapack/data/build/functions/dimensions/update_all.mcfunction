function build:dimensions/update_scores
execute unless score <enable_event_world> global matches 1 in build:event_world run scoreboard players set @a[x=0] in_dimension -1
execute unless score <enable_blueprint_world> global matches 1 in build:blueprint_world run scoreboard players set @a[x=0] in_dimension -1
execute as @a[scores={in_dimension=-100..-1}] run function build:dimensions/leave_blocked_dimension

advancement revoke @s only build:changed_dimension
