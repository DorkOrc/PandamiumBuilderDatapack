scoreboard players operation $owner_id io = @s id

execute if score $p2x scratch < $p1x scratch run scoreboard players operation $p1x scratch >< $p2x scratch
execute if score $p2y scratch < $p1y scratch run scoreboard players operation $p1y scratch >< $p2y scratch
execute if score $p2z scratch < $p1z scratch run scoreboard players operation $p1z scratch >< $p2z scratch

scoreboard players operation $x_length scratch = $p2x scratch
scoreboard players operation $x_length scratch -= $p1x scratch
scoreboard players add $x_length scratch 1
scoreboard players operation $y_length scratch = $p2y scratch
scoreboard players operation $y_length scratch -= $p1y scratch
scoreboard players add $y_length scratch 1
scoreboard players operation $z_length scratch = $p2z scratch
scoreboard players operation $z_length scratch -= $p1z scratch
scoreboard players add $z_length scratch 1

execute summon text_display run function build:impl/editor/section_colour/generic/north
execute summon text_display run function build:impl/editor/section_colour/generic/south

execute summon text_display run function build:impl/editor/section_colour/generic/east
execute summon text_display run function build:impl/editor/section_colour/generic/west

execute summon text_display run function build:impl/editor/section_colour/generic/down
execute summon text_display run function build:impl/editor/section_colour/generic/up
