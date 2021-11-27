# Ambient Snowflakes
particle snowflake 0 100 0 10 10 10 0 4

# RTP
particle glow 11 91 -11 1.5 1.5 1.5 0.1 4

# Windtunnel
particle snowflake 0 120 27 3 15 3 0 20
execute as @a[x=-7,y=90,z=20,dx=14,dy=55,dz=14,gamemode=!spectator,x_rotation=-90..0] at @s positioned 0 ~ 27 if entity @s[distance=..7] run effect give @s levitation 1 10 true
execute as @a[x=-7,y=90,z=20,dx=14,dy=55,dz=14,gamemode=!spectator,x_rotation=0..90] at @s positioned 0 ~ 27 if entity @s[distance=..7] run effect give @s slow_falling 1 0 true


# Sauna
particle campfire_cosy_smoke -40 128 -6 2 1.0 2 .01 3

# Barrier in TARDIS
particle dust 0.5 0 0 1 -51 49.5 42 .25 .25 .25 0 1

# TARDIS
tp @a[x=-46.0625,y=176,z=48.9375,dx=.125,dy=2,dz=.125,gamemode=!spectator] -86.5 44 30.4375 180 0
tp @a[x=-87.0625,y=44,z=30.9375,dx=.125,dy=2,dz=.125,gamemode=!spectator] -44.655 176 48.55 -137.2 21

execute if entity @a[x=-18.5,y=-32,z=130,distance=..64,gamemode=!spectator] run function pandamium:misc/map_specific/moving_logs
