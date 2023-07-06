execute at @e[type=item_display,tag=custom_block.portal_cauldron,tag=custom_block.base] run particle portal ~ ~1 ~ 0.18 0.95 0.18 0.01 1
execute at @e[type=item_display,tag=custom_block.huge_portal,tag=custom_block.base] run particle portal ~ ~2.5 ~ 1.5 1.5 1.5 1 5

execute if entity @a[x=-195.5,y=100.00,z=203.5,distance=..50,limit=1] if loaded -196 121 203 unless entity @e[type=snowball,tag=elevator,tag=elevator.location.mineshaft] run function build:map_specific/elevator/create/mineshaft
execute if entity @a[x=-311.5,y=127.00,z=122.5,distance=..50,limit=1] if loaded -312 126 122 unless entity @e[type=snowball,tag=elevator,tag=elevator.location.maproom] run function build:map_specific/elevator/create/maproom

# map-art teleport
tp @a[x=-205,y=140,z=106,dx=1,dy=1,dz=0] -187 -17 107

# portalling well teleport
#tp @a[x=-52,y=70,z=137,dx=3,dy=0.5,dz=3] -58 48 127

# nether cannon teleport
#???
