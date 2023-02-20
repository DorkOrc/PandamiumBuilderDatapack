execute unless entity @s[predicate=!build:in_dimension/minecraft/overworld,predicate=!build:in_dimension/minecraft/the_nether] run function build:impl/detect/change_dimension/nether_portal_transfer
execute at @s unless predicate build:in_dimension/whitelisted run function build:impl/detect/change_dimension/resolve_non_whitelisted_dimension

execute at @s run function build:utils/get/dimension_id
scoreboard players operation @s in_dimension = $utils.get.out io

advancement revoke @s only build:detect/change_dimension
