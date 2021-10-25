execute unless score @s uid matches 2.. run function build:first_join

function build:misc/update_dimensions
execute if score @s in_dimension matches 3 unless score <enable_event_dimension> global matches 1 run tellraw @s [{"text":"[Info]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Event Overworld","color":"yellow"}," is currently not in use! Teleported you to ",{"text":"The Overworld","color":"yellow"},"."]]
execute if score @s in_dimension matches 3 unless score <enable_event_dimension> global matches 1 at @s in overworld run tp ~ ~ ~

scoreboard players set @s builder_perms 0
scoreboard players set @s[team=builder] builder_perms 1
scoreboard players set @s[team=op_builder] builder_perms 1
scoreboard players set @s[team=dev] builder_perms 2
scoreboard players set @s[team=owner] builder_perms 2

scoreboard players set @s leave_count 0
