function build:custom_blocks/pre

setblock ~ ~ ~ air
execute as @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"rotatable_block"}}}}] run function build:custom_blocks/rotatable_block/as_source
