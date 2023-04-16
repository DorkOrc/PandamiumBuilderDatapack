execute in build:storage run setblock 0 0 0 barrel
execute in build:storage run item replace block 0 0 0 container.0 from entity @s weapon.offhand
execute in build:storage run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute in build:storage run item replace entity @s weapon.mainhand from block 0 0 0 container.0
