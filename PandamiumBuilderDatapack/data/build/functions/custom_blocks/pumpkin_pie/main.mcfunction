function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"pumpkin_pie"}}}}] add source

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/pumpkin_pie/as_base

setblock ~ ~ ~ barrier

tag @a remove source
