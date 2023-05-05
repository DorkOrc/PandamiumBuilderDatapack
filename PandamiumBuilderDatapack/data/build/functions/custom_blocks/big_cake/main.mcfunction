function build:custom_blocks/pre

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/big_cake/as_base

setblock ~ ~ ~ cake
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ red_candle[candles=3,lit=true,waterlogged=false]
