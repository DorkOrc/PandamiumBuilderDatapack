scoreboard players set $chest_minecart_exists variable 0
execute on passengers if entity @s[type=chest_minecart] run scoreboard players set $chest_minecart_exists variable 1
execute if score $chest_minecart_exists variable matches 0 run setblock ~ ~ ~ air destroy
