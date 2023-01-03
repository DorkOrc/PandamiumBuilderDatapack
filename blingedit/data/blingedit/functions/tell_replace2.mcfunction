function blingedit:check_loaded
execute if score Global loaded matches 1.. run function blingedit:execute128_ln1026
execute unless score Global loaded matches 1.. run tellraw @s ["",{"text":"Chunk 1874999,4,1574312 wasn't loaded. Try again (or use "},{"text":"/forceload add 29999998 25189000","color":"aqua"},{"text":")","color":"white"}]