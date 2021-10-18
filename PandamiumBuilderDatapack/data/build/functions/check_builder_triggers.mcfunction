scoreboard players set <is_holding_wand> variable 0
execute if predicate blingedit:wand_mainhand run scoreboard players set <is_holding_wand> variable 1
execute if predicate blingedit:wand_offhand run scoreboard players set <is_holding_wand> variable 1

#

execute if score @s set_block matches 1.. if score <is_holding_wand> variable matches 1 at @s align xz run tp @s ~0.5 ~ ~0.5
execute if score @s set_block matches 1.. at @s run function build:triggers/set_block/check_can_set_block
scoreboard players reset @s set_block
scoreboard players enable @s set_block

execute if score @s get_sign matches 1.. at @s run function build:triggers/get_sign/run
scoreboard players reset @s get_sign
scoreboard players enable @s get_sign

execute if score @s replace_sign matches 1.. at @s run function build:triggers/replace_sign/run
scoreboard players reset @s replace_sign
scoreboard players enable @s replace_sign

execute if score @s entity_data matches 1.. at @s run function build:triggers/entity_data/run
execute if score @s entity_data matches ..-1 at @s run function build:triggers/entity_data/run
scoreboard players reset @s entity_data
scoreboard players enable @s entity_data

execute if score @s switch_time matches 1.. run function build:triggers/switch_time
scoreboard players reset @s switch_time
scoreboard players enable @s switch_time

execute if score @s toggle_gamemode matches 1.. run function build:triggers/toggle_gamemode
scoreboard players reset @s toggle_gamemode
scoreboard players enable @s toggle_gamemode

execute if score @s pose matches 1.. at @s run function build:triggers/pose
execute if score @s pose matches ..-1 at @s run function build:triggers/pose
scoreboard players reset @s pose
scoreboard players enable @s pose

execute if score @s hat matches 1.. in pandamium:staff_world run function build:triggers/hat
scoreboard players reset @s hat
scoreboard players enable @s hat

execute if score @s get_head matches 1.. in pandamium:staff_world run function build:triggers/get_head
scoreboard players reset @s get_head
scoreboard players enable @s get_head

execute if score @s restart matches 1.. run function build:triggers/restart
execute if score @s restart matches ..-1 run function build:triggers/restart
scoreboard players reset @s restart
scoreboard players enable @s restart

execute if score @s lock_all matches 1.. run function build:triggers/lock_all
scoreboard players reset @s lock_all
scoreboard players enable @s lock_all

execute if score @s unlock_nearest matches 1.. at @s run function build:triggers/unlock_nearest
scoreboard players reset @s unlock_nearest
scoreboard players enable @s unlock_nearest

execute if score @s mini_block matches 1.. run function build:triggers/mini_block
scoreboard players reset @s mini_block
scoreboard players enable @s mini_block

execute if score @s give_all_mob_heads matches 1.. run function build:misc/give_all_mob_heads
scoreboard players reset @s give_all_mob_heads
scoreboard players enable @s give_all_mob_heads

execute if score @s item_font matches 1.. in pandamium:staff_world run function build:triggers/item_font
execute if score @s item_font matches ..-1 in pandamium:staff_world run function build:triggers/item_font
scoreboard players reset @s item_font
scoreboard players enable @s item_font

execute if score @s save_mob matches 1.. at @s run function build:triggers/save_mob/store
execute if score @s save_mob matches ..-1 at @s run function build:triggers/save_mob/store
scoreboard players reset @s save_mob
scoreboard players enable @s save_mob

execute if score @s save_mob.spawn matches 1.. at @s run function build:triggers/save_mob/spawn
execute if score @s save_mob.spawn matches ..-1 at @s run function build:triggers/save_mob/spawn
scoreboard players reset @s save_mob.spawn
scoreboard players enable @s save_mob.spawn

# only enabled on the snapshot server (<server>=1)
execute if score <server> global matches 1 if score @s fake_block matches 1.. at @s run function build:triggers/fake_block/check_can_fake_block
execute if score <server> global matches 1 if score @s fake_block matches -1 at @s run function build:triggers/fake_block/kill_nearest
scoreboard players reset @s fake_block
execute if score <server> global matches 1 run scoreboard players enable @s fake_block

# BlingEdit

execute if score @s wand matches 1.. at @s run function build:triggers/blingedit/wand
scoreboard players reset @s wand
scoreboard players enable @s wand

execute if score <is_holding_wand> variable matches 1 if score @s blingedit matches ..-1 at @s run function build:triggers/blingedit/exec
scoreboard players reset @s blingedit
execute if score <is_holding_wand> variable matches 1 run scoreboard players enable @s blingedit

execute if score <is_holding_wand> variable matches 1 if score @s dropfill matches ..-1 at @s run function build:triggers/blingedit/dropfill
scoreboard players reset @s dropfill
execute if score <is_holding_wand> variable matches 1 run scoreboard players enable @s dropfill

execute if score <is_holding_wand> variable matches 1 if score @s spline matches ..-1 at @s run function build:triggers/blingedit/spline
scoreboard players reset @s spline
execute if score <is_holding_wand> variable matches 1 run scoreboard players enable @s spline

#
