tag @e[type=#build:lockables,distance=..7,sort=nearest,limit=1] add selected_entity

execute if entity @e[x=0,tag=selected_entity,x=0,type=armor_stand] run data merge entity @s {Marker:0b}
execute if entity @e[x=0,tag=selected_entity,x=0,type=#item_frames] run data merge entity @s {Fixed:0b}

scoreboard players set @e[type=#build:lockables,distance=..7] glow_time 0
scoreboard players set @e[tag=selected_entity,x=0] glow_time 100
execute as @e[type=#build:lockables,scores={glow_time=..0}] run data merge entity @s {Glowing:0b}

execute if entity @e[tag=selected_entity,x=0,type=armor_stand] run tellraw @s [{"text":"[Unlock Nearest]","color":"dark_green"},{"text":" Unlocked nearest armour stand!","color":"green"}]
execute if entity @e[tag=selected_entity,x=0,type=#item_frames] run tellraw @s [{"text":"[Unlock Nearest]","color":"dark_green"},{"text":" Unlocked nearest item frame!","color":"green"}]

tag @e remove selected_entity
