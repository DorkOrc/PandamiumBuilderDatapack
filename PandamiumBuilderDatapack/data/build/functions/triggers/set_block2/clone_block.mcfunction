execute if score <scheduled> set_block.target matches 1 at @a[scores={builder_perms=1..,set_block.target=1}] unless block 0 8 0 air run clone 0 8 0 0 8 0 ~ ~ ~
setblock 0 7 0 bedrock
scoreboard players reset * set_block.target
