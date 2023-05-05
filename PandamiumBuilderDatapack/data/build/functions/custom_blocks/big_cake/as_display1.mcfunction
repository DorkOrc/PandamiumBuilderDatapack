tag @s add custom_block.big_cake
tag @s add custom_block.display

item replace entity @s container.0 with player_head{SkullOwner: {Id: [I; -1066432250, 1284131089, -1674974691, -1122325630], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM2N2Q4MzMxYzVhZmJhNTE5OGU2NTI4OGI3Y2FjMTBmNmIyZmQ2MjVhMWJiZTFhM2RmMjM5MzUzMDFhMGUxYyJ9fX0="}]}, Name: "§lCake"}}
data merge entity @s {transformation:{scale:[1f,1f,1f],translation:[0f,1f,0f]}}

ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
