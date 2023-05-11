function build:custom_blocks/pre

tag @p[nbt={SelectedItem:{id:"minecraft:barrel",tag:{pandabuild:{custom_block:"text_display_manager"}}}}] add source

execute if entity @a[tag=source,limit=1,y_rotation=-45..44] run setblock ~ ~ ~ lectern[facing=north,has_book=true]
execute if entity @a[tag=source,limit=1,y_rotation=45..134] run setblock ~ ~ ~ lectern[facing=east,has_book=true]
execute if entity @a[tag=source,limit=1,y_rotation=135..-134] run setblock ~ ~ ~ lectern[facing=south,has_book=true]
execute if entity @a[tag=source,limit=1,y_rotation=-135..-45] run setblock ~ ~ ~ lectern[facing=west,has_book=true]
data merge block ~ ~ ~ {Book:{id:'minecraft:writable_book',Count:1b,tag:{pages:['# config','{"text":"Line 1"}','{"text":"Line 2"}']}}}
data modify block ~ ~ ~ Book.tag.pages[0] set from storage build:dictionary custom_blocks.text_display_manager.config_page

execute positioned ~ ~-0.5 ~ summon item_display run function build:custom_blocks/text_display_manager/as_base

tag @a remove source
