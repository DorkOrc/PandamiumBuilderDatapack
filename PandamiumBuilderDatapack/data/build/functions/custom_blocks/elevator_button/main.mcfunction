function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"elevator_button"}}}}] add source

execute positioned ~ ~ ~ summon item_display run function build:custom_blocks/elevator_button/as_base

setblock ~ ~ ~ barrier

tag @a remove source
