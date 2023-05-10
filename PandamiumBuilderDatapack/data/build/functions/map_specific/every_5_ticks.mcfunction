execute at @e[type=item_display,tag=custom_block.portal_cauldron,tag=custom_block.base] run particle portal ~ ~1 ~ 0.18 0.95 0.18 0.01 1
execute at @e[type=item_display,tag=custom_block.huge_portal,tag=custom_block.base] run particle portal ~ ~2.5 ~ 1.5 1.5 1.5 1 5

execute in build:snapshot/overworld if entity @a[x=-195.5,y=100.00,z=203.5,distance=..50,limit=1] if loaded -196 121 203 unless entity @e[type=snowball,tag=elevator,tag=elevator.location.mineshaft] run function build:map_specific/elevator/create/mineshaft
execute in build:snapshot/overworld if entity @a[x=-311.5,y=127.00,z=122.5,distance=..50,limit=1] if loaded -312 126 122 unless entity @e[type=snowball,tag=elevator,tag=elevator.location.maproom] run function build:map_specific/elevator/create/maproom
