# run AS and AT armour stand
tag @s remove raycast.target

particle wax_off ~ ~1 ~ 0.2 0.4 0.2 0.2 10

data modify storage build:temp pose.nbt set from entity @s
function build:misc/pose/do_edit
