scoreboard players operation $new_wait scratch = $wait scratch
execute store result storage build:editor queue[0].wait int 1 run scoreboard players remove $new_wait scratch 1
