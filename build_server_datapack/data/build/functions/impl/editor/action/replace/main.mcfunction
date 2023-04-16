function #rx.playerdb:api/v2/get/self
# 

data modify storage build:editor queue append value {action:'init_replace'}
execute store result storage build:editor queue[-1].player int 1 run scoreboard players get @s id
data modify storage build:editor queue[-1].block_1 set from storage rx.playerdb:io player.data.DorkOrc.PandamiumBuilderDatapack.editor.block_1
data modify storage build:editor queue[-1].block_2 set from storage rx.playerdb:io player.data.DorkOrc.PandamiumBuilderDatapack.editor.block_2
