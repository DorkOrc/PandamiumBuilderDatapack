# arguments: trigger

execute if score @s spawn.snapshot.original.overworld matches 1.. in pandabuild:servers/snapshot/overworld run tp @s -289 127 174 0 0
execute if score @s spawn.snapshot.original.the_nether matches 1.. in pandabuild:servers/snapshot/the_nether run tp @s 0 128 0 180 0

execute if score @s spawn.snapshot.christmas.overworld matches 1.. in pandabuild:servers/snapshot/variant_1/overworld run tp @s -289 127 174 0 0
execute if score @s spawn.snapshot.christmas.the_nether matches 1.. in pandabuild:servers/snapshot/variant_1/the_nether run tp @s 0 128 0 180 0

execute if score @s spawn.snapshot.halloween.overworld matches 1.. in pandabuild:servers/snapshot/variant_2/overworld run tp @s -289 127 174 0 0
execute if score @s spawn.snapshot.halloween.the_nether matches 1.. in pandabuild:servers/snapshot/variant_2/the_nether run tp @s 0 128 0 180 0

$scoreboard players reset @s $(trigger)
$scoreboard players enable @s $(trigger)
