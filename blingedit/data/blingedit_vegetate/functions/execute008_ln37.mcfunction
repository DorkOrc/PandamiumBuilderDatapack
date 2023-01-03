scoreboard players set Global run_scratch3 0
scoreboard players operation Global run_scratch3 += @e[type=minecraft:armor_stand,limit=1,sort=random,scores={RVblingedit_vege=..1}] RVblingedit_vege
scoreboard players operation Global run_scratch3 *= $2 blingedit.constant
scoreboard players operation Global run_scratch3 += @e[type=minecraft:armor_stand,limit=1,sort=random,scores={RVblingedit_vege=..1}] RVblingedit_vege
scoreboard players operation Global run_scratch3 *= $2 blingedit.constant
scoreboard players operation Global run_scratch3 += @e[type=minecraft:armor_stand,limit=1,sort=random,scores={RVblingedit_vege=..1}] RVblingedit_vege
scoreboard players operation Global run_scratch3 *= $5 blingedit.constant
scoreboard players operation Global run_scratch3 += @e[type=minecraft:armor_stand,limit=1,sort=random,scores={RVblingedit_vege=..4}] RVblingedit_vege
scoreboard players operation Global veg = Global run_scratch3
execute if score Global veg matches 3.. if score Global veg matches ..8 run setblock ~ ~ ~ grass
execute if score Global veg matches 9..9 run setblock ~ ~ ~ poppy
execute if score Global veg matches 10..10 run function blingedit_vegetate:execute004_ln45
execute if score Global veg matches 11..11 run setblock ~ ~ ~ poppy
execute if score Global veg matches 12..12 run setblock ~ ~ ~ dandelion
execute if score Global veg matches 13..13 run setblock ~ ~ ~ blue_orchid
execute if score Global veg matches 14..14 run setblock ~ ~ ~ allium
execute if score Global veg matches 15..15 run setblock ~ ~ ~ azure_bluet
execute if score Global veg matches 16..16 run setblock ~ ~ ~ red_tulip
execute if score Global veg matches 17..17 run setblock ~ ~ ~ orange_tulip
execute if score Global veg matches 18..18 run setblock ~ ~ ~ white_tulip
execute if score Global veg matches 19..19 run setblock ~ ~ ~ pink_tulip
execute if score Global veg matches 20..20 run setblock ~ ~ ~ oxeye_daisy
execute if score Global veg matches 21..21 run setblock ~ ~ ~ poppy
execute if score Global veg matches 22..22 run setblock ~ ~ ~ fern
execute if score Global veg matches 23..23 run function blingedit_vegetate:execute005_ln85
execute if score Global veg matches 24..24 run function blingedit_vegetate:execute006_ln89
execute if score Global veg matches 25..25 run function blingedit_vegetate:execute007_ln93