tag @s add custom_block.wheelbarrow_part
tag @s add custom_block.display

tp @s ~ ~ ~ ~ ~
data merge entity @s {item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;458088687,-620935933,-1349923190,1746405504],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThiNTg3ZmI1M2JhYjYwYzFhMDNjMTI2ZWUyNjgxOGRjM2IzMzI1ZWI4MjE4ZGU3MjdhNmUwOTFiOWM4MGNkNiJ9fX0="}]}}}},transformation:{scale:[0.5f,1f,1f],translation:[0.5f,0.5f,0.25f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
