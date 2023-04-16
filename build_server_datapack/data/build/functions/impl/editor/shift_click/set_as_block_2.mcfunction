function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.DorkOrc.PandamiumBuilderDatapack.editor.block_2 set from storage build:itemblock block_state
function #rx.playerdb:api/v2/save/self

data modify storage build:io block_state set from storage build:itemblock block_state
function build:utils/get_block_state_display
tellraw @s [{"text":"Set Block 2: "},{"nbt":"text","storage":"build:io","interpret":true}]
