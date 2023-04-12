scoreboard players operation @s owner_id = $id scratch
tag @s add editor
tag @s add editor.block_colour
tag @s add editor.block_colour.slime

data merge entity @s {Glowing:1b,NoAI:1b,Size:1b,Invulnerable:1b,Silent:1b,DeathLootTable:"empty",DeathTime:20s}
effect give @s invisibility infinite 0 true

execute if score $colour scratch matches 1 run team join colour.red
execute if score $colour scratch matches 2 run team join colour.green
execute if score $colour scratch matches 3 run team join colour.blue

ride @s mount @e[type=text_display,tag=editor.block_colour.new_base,limit=1]
