execute unless entity @e[type=marker,limit=1,sort=nearest,distance=..6,tag=map_specific.fake_block] run tellraw @s {"text":"No fake blocks within 6 blocks of you.","color":"red"}
kill @e[type=marker,limit=1,sort=nearest,distance=..6,tag=map_specific.fake_block]
kill @e[type=falling_block,tag=map_specific.fake_block]
function pandamium:misc/map_specific/fake_blocks/refresh
