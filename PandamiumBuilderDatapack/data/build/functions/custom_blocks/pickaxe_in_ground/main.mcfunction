function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"pickaxe_in_ground"}}}}] add source

execute store success score <type> variable if predicate pandamium:coin_flip
execute if score <type> variable matches 0 facing entity @a[tag=source,limit=1] eyes rotated ~ 0 positioned ^ ^-0.1 ^0.2 summon item_display run function build:custom_blocks/pickaxe_in_ground/as_base
execute if score <type> variable matches 1 facing entity @a[tag=source,limit=1] eyes rotated ~ 0 positioned ^ ^-0.1 ^-0.2 summon item_display run function build:custom_blocks/pickaxe_in_ground/as_base

setblock ~ ~ ~ barrier

tag @a remove source
