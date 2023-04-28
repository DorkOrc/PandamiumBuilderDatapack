data modify storage build:temp InventoryBooks[0].tag.display.Lore set value []
execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign{front_text:{messages:['{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[0]","color":"gray","italic":false}','{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[1]","color":"gray","italic":false}','{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[2]","color":"gray","italic":false}','{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[3]","color":"gray","italic":false}']}}
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[0] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[1] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[1]
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[2] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[2]
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[3] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[3]
execute in pandamium:staff_world run setblock 0 0 0 air
execute in pandamium:staff_world run setblock 0 0 0 oak_sign{front_text:{messages:['{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[4]","color":"gray","italic":false}','{"storage":"build:temp","nbt":"InventoryBooks[0].tag.pages[5]","color":"gray","italic":false}','{"text":""}','{"text":""}']}}
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[4] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[0]
execute in pandamium:staff_world if data storage build:temp InventoryBooks[0].tag.pages[5] run data modify storage build:temp InventoryBooks[0].tag.display.Lore append from block 0 0 0 front_text.messages[1]

data modify storage build:temp Inventory append from storage build:temp InventoryBooks[0]
data remove storage build:temp InventoryBooks[0]
execute if data storage build:temp InventoryBooks[0] run function build:misc/update_all_writable_book_lores_
