function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"community_chest"}}}}] add source

execute positioned ~ ~-0.453 ~ summon item_display run function build:custom_blocks/community_chest/as_base

setblock ~ ~ ~ light[level=0]

tag @a remove source
