tag @e[tag=invisible] remove invisible
execute as @e[type=#build:lockables] if data entity @s {Invisible:1b} run tag @s add invisible

tag @e[type=armor_stand,tag=pose.locked] remove pose.locked
tag @e[tag=!spawn_protected] add spawn_protected

execute as @e[type=#build:has_nbt/items] run data remove entity @s Items[]
execute as @e[type=#build:make_invulnerable,tag=!made_invulnerable] run data merge entity @s {Invulnerable:1b,PersistenceRequired:1b}
tag @e[type=#build:make_invulnerable,tag=!made_invulnerable] add made_invulnerable
tag @e[tag=!spawn_protected] add spawn_protected

scoreboard players remove @e[scores={glow_time=1..}] glow_time 20
execute as @e[scores={glow_time=1..},type=#build:lockables] run data merge entity @s {Glowing:1b}
execute as @e[scores={glow_time=..0},type=#build:lockables] run data merge entity @s {Glowing:0b}
scoreboard players reset @e[scores={glow_time=..0}] glow_time

execute in build:snapshot/overworld as @e[type=marker,tag=parkour.checkpoint,x=0] store result score @s id run data get entity @s data.CheckpointID

execute unless score <enable_tnt> global matches 1 run kill @e[type=tnt]

schedule function build:slow_loop 1s
