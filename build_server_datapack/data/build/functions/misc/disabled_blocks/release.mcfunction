execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace #build:disabled_blocks/release[waterlogged=false]
execute at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace #build:disabled_blocks/release[waterlogged=true]

tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" That block is disabled in this dimension!","color":"red"}]

advancement revoke @s only build:disabled_blocks/release
