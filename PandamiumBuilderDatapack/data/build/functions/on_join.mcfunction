execute unless score @s uid matches 2.. run function build:first_join

scoreboard players set @s nether_portal_cooldown 80

function build:dimensions/update_all
execute in build:release/overworld run spawnpoint @s 0 65 0 0

scoreboard players set @s builder_perms 0
scoreboard players set @s[team=builder] builder_perms 1
scoreboard players set @s[team=op_builder] builder_perms 2
scoreboard players set @s[team=dev] builder_perms 2

scoreboard players set @s[scores={builder_perms=2..}] can_toggle_tnt 1

function pandamium:on_join

scoreboard players set @s detect.leave 0
