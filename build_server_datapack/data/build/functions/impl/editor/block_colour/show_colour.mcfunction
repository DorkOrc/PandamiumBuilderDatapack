data modify storage build:temp background set from entity @s background
execute on passengers run data modify entity @s[type=text_display] background set from storage build:temp background
execute on passengers run data modify entity @s[type=slime] Glowing set value 1b
execute on passengers run data modify entity @s[type=slime] Size set value 1b
