tag @s add custom_block.thin_spruce_log
tag @s add custom_block.display

data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1066432250,1284131089,-1674974691,-1122325630],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTMwNWQ1ZjI3YzgwZTRmOGIzZWNjYTk1MzhhZDVhMTAyMzdjY2E3NDA2YjFlOGE2NTM4NmE2M2MzNDY2MzVmYSJ9fX0="}]}}}},transformation:{translation:[0f,0.499f,0f],scale:[1.002f,1.004f,1.002f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
