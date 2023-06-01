function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"hoglin_feast"}}}}] add source

execute positioned ~ ~-0.453 ~ summon item_display run function build:custom_blocks/hoglin_feast/as_base

setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=false]

tag @a remove source
