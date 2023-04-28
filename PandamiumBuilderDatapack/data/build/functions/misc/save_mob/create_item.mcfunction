# run IN pandamium:staff_world

setblock 0 0 0 shulker_box
setblock 0 1 0 oak_sign
data modify block 0 1 0 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"selector":"@e[tag=selected_entity,limit=1]"}]'

item replace block 0 0 0 container.0 with clock{display:{Name:'{"color":"gold","italic":false,"text":"Stored Mob Item"}'},Enchantments:[{}],pandamium:{stored_mob:{}}}
function build:misc/save_mob/get_entity_id
data modify block 0 0 0 Items[0].tag.display.Lore prepend from block 0 1 0 front_text.messages[0]
data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"color":"dark_gray","italic":false,"text":"Hold this in your main hand and "}]'
data modify block 0 0 0 Items[0].tag.display.Lore append value '[{"color":"dark_gray","italic":false,"text":"run "},{"text":"/trigger ","color":"gray"},{"text":"save_mob.spawn","color":"aqua"}," to spawn it!"]'

tag @s remove selected_entity
data modify block 0 0 0 Items[0].tag.pandamium.stored_mob merge from entity @s
data remove block 0 0 0 Items[0].tag.pandamium.stored_mob.Pos
data remove block 0 0 0 Items[0].tag.pandamium.stored_mob.Motion
data remove block 0 0 0 Items[0].tag.pandamium.stored_mob.UUID

loot give @p[tag=running_trigger] mine 0 0 0 air{drop_contents:1b}
execute unless entity @p[tag=running_trigger] run loot spawn 0 0 0 mine 0 0 0 air{drop_contents:1b}
execute unless entity @p[tag=running_trigger] run tp @e[type=item,limit=1,x=0,y=0,z=0,distance=..1] @s

tp 0 -1000 0
kill
