scoreboard players set $hoglin_exists variable 0
execute on passengers if entity @s[type=hoglin] run scoreboard players set $hoglin_exists variable 1
execute if score $hoglin_exists variable matches 0 run setblock ~ ~ ~ air destroy
