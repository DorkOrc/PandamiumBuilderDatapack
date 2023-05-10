function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"huge_portal"}}}}] add source

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/huge_portal/as_base

setblock ~ ~ ~ barrier

tag @a remove source
