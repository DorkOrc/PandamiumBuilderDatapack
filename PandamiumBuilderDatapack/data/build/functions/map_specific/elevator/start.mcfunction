# as engine
tag @s add elevator.is_moving
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~5 ~1 air
execute if entity @s[tag=elevator.location.maproom] in overworld run fill -311 109 123 -313 109 121 barrier replace air
execute if entity @s[tag=elevator.location.mineshaft] in overworld run fill -197 77 204 -195 77 202 minecraft:barrier replace air
execute on passengers on passengers run data modify entity @s[type=block_display] transformation.scale set value [1f,1f,1f]

execute at @s positioned ~-1 ~ ~-1 run tag @a[dx=2,dy=0,dz=2] add target
execute at @a[tag=target] on passengers run ride @p mount @s
tag @a remove target
