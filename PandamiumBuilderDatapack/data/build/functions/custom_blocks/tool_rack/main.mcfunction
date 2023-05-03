function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"tool_rack"}}}}] add source

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/tool_rack/as_base

setblock ~ ~ ~ barrier

tag @a remove source
