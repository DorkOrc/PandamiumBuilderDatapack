execute as @e[type=armor_stand] run data merge entity @s {Marker:1b}
execute as @e[type=#item_frames] run data merge entity @s {Fixed:1b}

tellraw @a [{"text":"[Lock All] ","color":"blue"},{"selector":"@s"},{"text":" locked all armour stands and item frames!","color":"green"}]
