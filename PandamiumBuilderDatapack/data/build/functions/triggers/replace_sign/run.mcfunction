advancement revoke @s only build:interact_with_sign

function build:misc/sign/create_raycast

execute at @e[type=marker,tag=sign.raycast,limit=1] run function build:triggers/replace_sign/replace_sign

kill @e[type=marker,tag=sign.raycast,limit=1]
