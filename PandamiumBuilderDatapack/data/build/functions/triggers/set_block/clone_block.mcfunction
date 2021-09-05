execute if score <scheduled> set_block.target matches 1 at @a[team=builder,scores={set_block.target=1}] unless block 0 8 0 air run clone 0 8 0 0 8 0 ~ ~ ~
setblock 0 7 0 minecraft:bedrock
scoreboard players reset * set_block.target
