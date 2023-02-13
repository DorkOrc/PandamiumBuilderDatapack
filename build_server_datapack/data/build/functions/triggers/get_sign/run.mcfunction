function build:misc/sign/create_raycast

execute if score <in_sign> variable matches 1 at @e[type=marker,tag=sign.raycast,limit=1] run function build:triggers/get_sign/get_sign

kill @e[type=marker,tag=sign.raycast,limit=1]
