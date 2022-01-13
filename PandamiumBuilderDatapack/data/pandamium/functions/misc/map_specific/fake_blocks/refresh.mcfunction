kill @e[type=falling_block,tag=map_specific.fake_block]
execute in build:snapshot/overworld as @e[type=marker,tag=map_specific.fake_block,x=0] at @s if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all in pandamium:staff_world positioned 0 0 0 run function pandamium:misc/map_specific/fake_blocks/as_marker
execute in build:snapshot/the_nether as @e[type=marker,tag=map_specific.fake_block,x=0] at @s if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all in pandamium:staff_world positioned 0 0 0 run function pandamium:misc/map_specific/fake_blocks/as_marker
