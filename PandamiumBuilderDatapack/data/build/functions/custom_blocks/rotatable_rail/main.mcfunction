function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"rotatable_rail"}}}}] add source

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/rotatable_rail/as_base
fill ~ ~ ~ ~ ~ ~ barrier replace command_block

tag @a remove source
