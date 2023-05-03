execute store result score <air> variable run fill ~ ~ ~ ~1 ~1 ~1 stone replace air
execute if score <air> variable matches 1.. run fill ~ ~ ~ ~1 ~1 ~1 air
execute if score <air> variable matches 1.. run function build:custom_blocks/kill_stack
