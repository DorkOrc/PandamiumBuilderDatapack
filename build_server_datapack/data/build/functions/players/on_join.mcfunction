scoreboard players reset @s detect.leave_game
execute if score @s editor.holding_wand_ticks matches 1.. run function build:impl/editor/stop/main

function build:impl/detect/change_dimension/main

function build:players/ranks/update_perms
function build:players/ranks/update_team

function build:players/reset_triggers
function build:players/enable_triggers

tellraw @s "ran build:players/on_join"
