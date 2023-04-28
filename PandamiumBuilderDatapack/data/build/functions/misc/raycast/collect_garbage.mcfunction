execute as @e[type=marker,tag=raycast.ray,limit=1] run function build:misc/raycast/kill_marker_vibration_fix
tag @e[tag=raycast.target] remove raycast.target
