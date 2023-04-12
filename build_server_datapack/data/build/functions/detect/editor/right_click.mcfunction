tellraw @s "detected right-click from interaction"
playsound entity.item_frame.rotate_item master @s
function build:impl/editor/click/main

advancement revoke @s only build:detect/editor/right_click