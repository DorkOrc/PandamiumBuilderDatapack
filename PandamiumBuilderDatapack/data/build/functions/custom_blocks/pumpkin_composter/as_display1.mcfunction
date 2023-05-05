tag @s add custom_block.placed_item
tag @s add custom_block.display

item replace entity @s container.0 with player_head{SkullOwner: {Id: [I; -1066432250, 1284131089, -1674974691, -1122325630], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzUxYTBlYmNmMTE1ODhiZGJlMjM3YmI1MTM4MTczYjdiYmM1MDdjMzFkZDhkYWQ0NWQ5Y2FlNjBmODNjYThlMyJ9fX0="}]}, Name: "§lPumpkin"}}
data merge entity @s {transformation:{scale:[1.25f,1.25f,1.25f],translation:[0f,1.0626f,0f]}}

execute if score <found_item> variable matches 1 run ride @s mount @e[type=item_display,tag=custom_block.base_new,limit=1,sort=nearest]
