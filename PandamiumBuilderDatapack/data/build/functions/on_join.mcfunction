execute unless score @s uid matches 2.. run function build:first_join

scoreboard players set @s builder_perms 0
scoreboard players set @s[team=builder] builder_perms 1
scoreboard players set @s[team=op_builder] builder_perms 1
scoreboard players set @s[team=dev] builder_perms 2

function build:misc/check_player_dimensions

scoreboard players set @s leave_count 0
