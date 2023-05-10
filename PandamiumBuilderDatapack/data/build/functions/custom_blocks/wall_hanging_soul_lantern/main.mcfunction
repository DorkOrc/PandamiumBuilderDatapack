function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"wall_hanging_soul_lantern"}}}}] add source

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/wall_hanging_soul_lantern/as_base

setblock ~ ~ ~ soul_lantern[hanging=true]

tag @a remove source
