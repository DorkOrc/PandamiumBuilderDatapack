tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Entity Data Menu","bold":true}," ========"]

execute unless data storage build:entity_data {NBT:{Invulnerable:1b}} run tellraw @s [{"text":"Invulnerable: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -1"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{Invulnerable:1b}} run tellraw @s [{"text":"Invulnerable: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -1"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

execute if entity @e[tag=selected_entity,type=#build:entity_data/mobs] unless data storage build:entity_data {NBT:{NoAI:1b}} run tellraw @s [{"text":"NoAI: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -2"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if entity @e[tag=selected_entity,type=#build:entity_data/mobs] if data storage build:entity_data {NBT:{NoAI:1b}} run tellraw @s [{"text":"NoAI: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -2"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

execute unless data storage build:entity_data {NBT:{NoGravity:1b}} run tellraw @s [{"text":"NoGravity: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -3"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{NoGravity:1b}} run tellraw @s [{"text":"NoGravity: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -3"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

execute unless data storage build:entity_data {NBT:{Silent:1b}} run tellraw @s [{"text":"Silent: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -4"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{Silent:1b}} run tellraw @s [{"text":"Silent: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -4"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

tellraw @s [{"text":"Pos: ","color":"aqua"},{"text":"[To Self] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -5"},"hoverEvent":{"action":"show_text","value":"Teleport to you"}},{"text":"[Up] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -6"},"hoverEvent":{"action":"show_text","value":"Teleport Up 1 Pixel"}},{"text":"[Down] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -7"},"hoverEvent":{"action":"show_text","value":"Teleport Down 1 Pixel"}},{"text":"[North] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -8"},"hoverEvent":{"action":"show_text","value":"Teleport North 1 Pixel"}},{"text":"[East] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -9"},"hoverEvent":{"action":"show_text","value":"Teleport East 1 Pixel"}},{"text":"[South] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -10"},"hoverEvent":{"action":"show_text","value":"Teleport South 1 Pixel"}},{"text":"[West] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -11"},"hoverEvent":{"action":"show_text","value":"Teleport West 1 Pixel"}}]
	
tellraw @s [{"text":"Rotation: ","color":"aqua"},[{"text":"[","color":"white"},{"nbt":"NBT.Rotation[]","storage":"build:entity_data","color":"green","separator":{"text":", ","color":"white"}},"]"]]
tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Face Feet] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -12"},"hoverEvent":{"action":"show_text","value":"Face Feet"}},{"text":"[Face Eyes] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -13"},"hoverEvent":{"action":"show_text","value":"Face Eyes"}},{"text":"[2° ⟳] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -14"},"hoverEvent":{"action":"show_text","value":"2° Clockwise"}},{"text":"[22.5° ⟳] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -15"},"hoverEvent":{"action":"show_text","value":"22.5° Clockwise"}},{"text":"[2° ⟲] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -16"},"hoverEvent":{"action":"show_text","value":"2° Anti-Clockwise"}},{"text":"[22.5° ⟲] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -17"},"hoverEvent":{"action":"show_text","value":"22.5° Anti-Clockwise"}},{"text":"[22.5° ↑] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -18"},"hoverEvent":{"action":"show_text","value":"22.5° Up"}},{"text":"[22.5° ↓] ","color":"blue","font":"uniform","bold":true,"clickEvent":{"action":"run_command","value":"/trigger entity_data set -19"},"hoverEvent":{"action":"show_text","value":"22.5° Down"}}]

tellraw @s ["",{"text":"CustomName: ","color":"aqua"},{"nbt":"NBT.CustomName","storage":"build:entity_data","interpret":true}]
tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[From Item Name] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -20"},"hoverEvent":{"action":"show_text","value":"Set CustomName to Main Hand display Name"}},{"text":"[From Book and Quill] ","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -21"},"hoverEvent":{"action":"show_text","value":"Set CustomName to Main Hand pages[0]"}}]

execute unless data storage build:entity_data {NBT:{CustomNameVisible:1b}} run tellraw @s [{"text":"CustomNameVisible: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -22"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{CustomNameVisible:1b}} run tellraw @s [{"text":"CustomNameVisible: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -22"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

execute unless data storage build:entity_data {NBT:{Glowing:1b}} run tellraw @s [{"text":"Glowing: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -23"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{Glowing:1b}} run tellraw @s [{"text":"Glowing: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -23"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

execute unless data storage build:entity_data {NBT:{HasVisualFire:1b}} run tellraw @s [{"text":"HasVisualFire: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -24"}},{"text":"false","color":"red"},"|",{"text":"true","color":"dark_gray"},">"]]
execute if data storage build:entity_data {NBT:{HasVisualFire:1b}} run tellraw @s [{"text":"HasVisualFire: ","color":"aqua"},[{"text":"<","color":"gray","clickEvent":{"action":"run_command","value":"/trigger entity_data set -24"}},{"text":"false","color":"dark_gray"},"|",{"text":"true","color":"green"},">"]]

#execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/age] run tellraw @s [{"text":"Age: ","color":"aqua"},{"nbt":"NBT.Age","storage":"build:entity_data"}]
#execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/age] run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[-2147483647]  [0]","color":"blue"}]

tellraw @s {"text":"Item Slots: ","color":"aqua"}
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/feet] unless data entity @e[tag=selected_entity,limit=1] ArmorItems[0].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Feet]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -47"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/feet] if data entity @e[tag=selected_entity,limit=1] ArmorItems[0].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Feet]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -47"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/legs] unless data entity @e[tag=selected_entity,limit=1] ArmorItems[1].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Legs]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -48"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/legs] if data entity @e[tag=selected_entity,limit=1] ArmorItems[1].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Legs]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -48"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/chest] unless data entity @e[tag=selected_entity,limit=1] ArmorItems[2].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Chest]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -49"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/chest] if data entity @e[tag=selected_entity,limit=1] ArmorItems[2].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Chest]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -49"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/head] unless data entity @e[tag=selected_entity,limit=1] ArmorItems[3].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Head]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -50"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/head] if data entity @e[tag=selected_entity,limit=1] ArmorItems[3].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Head]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -50"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/mainhand] unless data entity @e[tag=selected_entity,limit=1] HandItems[0].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Main Hand]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -51"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/mainhand] if data entity @e[tag=selected_entity,limit=1] HandItems[0].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Main Hand]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -51"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/offhand] unless data entity @e[tag=selected_entity,limit=1] HandItems[1].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Off-Hand]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -52"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_item_slot/offhand] if data entity @e[tag=selected_entity,limit=1] HandItems[1].id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Off-Hand]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -52"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/item] unless data entity @e[tag=selected_entity,limit=1] Item.id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Item]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -53"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/item] if data entity @e[tag=selected_entity,limit=1] Item.id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[Item]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -53"}},{"text":" ✔","color":"green"}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/decor_item] unless data entity @e[tag=selected_entity,limit=1] DecorItem.id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[DecorItem]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -155"}}]
execute if entity @e[tag=selected_entity,type=#build:entity_data/has_tag/decor_item] if data entity @e[tag=selected_entity,limit=1] DecorItem.id run tellraw @s [{"text":"└ ","color":"aqua"},{"text":"[DecorItem]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger entity_data set -155"}},{"text":" ✔","color":"green"}]

tellraw @s {"text":"==================================","color":"aqua"}

