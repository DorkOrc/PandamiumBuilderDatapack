setblock 0 8 0 air
setblock 0 9 0 bedrock
setblock 0 7 0 coarse_dirt
setblock -1 8 0 bedrock
setblock 1 8 0 bedrock
setblock 0 8 -1 bedrock
setblock 0 8 1 bedrock

execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:chorus_plant"}}} run setblock 0 7 0 end_stone
execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:chorus_flower"}}} run setblock 0 7 0 end_stone

execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:cocoa"}}} run setblock -1 8 0 jungle_log
execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:cocoa"}}} run setblock 1 8 0 jungle_log
execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:cocoa"}}} run setblock 0 8 -1 jungle_log
execute if data storage build:set_block {Entity:{BlockState:{Name:"minecraft:cocoa"}}} run setblock 0 8 1 jungle_log
