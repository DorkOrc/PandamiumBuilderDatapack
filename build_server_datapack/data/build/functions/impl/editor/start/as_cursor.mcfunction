scoreboard players operation @s owner_id = $impl.editor.start.id scratch
tag @s add editor
tag @s add editor.cursor
effect give @s invisibility infinite 0 true
data merge entity @s {NoAI:1b,Invulnerable:1b,Glowing:1b}
