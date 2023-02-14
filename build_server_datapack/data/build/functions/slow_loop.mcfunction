execute as @a[scores={opt.show_invisible_entities=1..}] at @s at @e[distance=..32,predicate=build:is_invisible] run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 normal @s

effect give @a[scores={opt.night_vision_mode=1}] night_vision 1000000 0 true
effect clear @a[scores={opt.night_vision_mode=2,is_spectator=1},gamemode=!spectator] night_vision
effect give @a[scores={opt.night_vision_mode=2},gamemode=spectator] night_vision 1000000 0 true

execute in build:release/overworld run function build:misc/manage_release_worlds/main
execute in build:release/the_nether run function build:misc/manage_release_worlds/main

tag @e[tag=!spawn_protected] add spawn_protected

#tag @e[type=armor_stand,tag=pose.locked] remove pose.locked

#execute as @e[type=#build:has_nbt/items] run data remove entity @s Items[]
#execute as @e[type=#build:make_invulnerable,tag=!made_invulnerable] run data merge entity @s {Invulnerable:1b,PersistenceRequired:1b}
#tag @e[type=#build:make_invulnerable,tag=!made_invulnerable] add made_invulnerable

#scoreboard players remove @e[scores={glow_time=1..}] glow_time 20
#execute as @e[scores={glow_time=1..},type=#build:lockables] run data merge entity @s {Glowing:1b}
#execute as @e[scores={glow_time=..0},type=#build:lockables] run data merge entity @s {Glowing:0b}
#scoreboard players reset @e[scores={glow_time=..0}] glow_time

#execute in build:snapshot/overworld as @e[type=marker,tag=parkour.checkpoint,x=0] store result score @s id run data get entity @s data.CheckpointID

schedule function build:slow_loop 1s

