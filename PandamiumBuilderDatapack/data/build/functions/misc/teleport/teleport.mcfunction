# Prevents hackers from tracking the teleport destination

execute store success score <is_flying> variable if entity @s[gamemode=creative,nbt={abilities:{flying:1b}}]

spectate

execute at @s run tp ~ 0 ~

tp ~ ~ ~
# Resets velocity
tp @s

xp add @s 0

function build:dimensions/update_scores

execute if score <is_flying> variable matches 1 run gamemode spectator
execute if score <is_flying> variable matches 1 run gamemode creative
