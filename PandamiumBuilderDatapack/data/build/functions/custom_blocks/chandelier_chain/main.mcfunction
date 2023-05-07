function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"chandelier_chain"}}}}] add source

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/chandelier_chain/as_base

setblock ~ ~ ~ barrier

tag @a remove source
