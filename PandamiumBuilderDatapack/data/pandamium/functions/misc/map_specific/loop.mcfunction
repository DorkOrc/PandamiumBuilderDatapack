# RTP
particle glow -15.0 138 13.0 1 1 1 0.1 1

# Nether Portal
particle crimson_spore -7.0 145.5 29.5 3 3 3 0.1 10

# Barrier in TARDIS
particle dust 0.5 0 0 1 -51 49.5 42 0.25 0.25 0.25 0 1

# TARDIS
tp @a[x=-46.0625,y=176,z=48.9375,dx=0.125,dy=2,dz=0.125] -86.5 44 30.4375 180 0
tp @a[x=-87.0625,y=44,z=30.9375,dx=0.125,dy=2,dz=0.125] -44.655 176 48.55 -137.2 21


# staff world teleport pad
execute in pandamium:staff_world as @a[x=-6,y=63,z=8,dx=0,dy=3,dz=0] run function pandamium:misc/teleport/spawn
