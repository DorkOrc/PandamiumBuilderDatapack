scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add uid dummy
scoreboard objectives add builder_perms dummy

# Triggers
scoreboard objectives add set_block trigger
scoreboard objectives add set_block.target dummy

scoreboard objectives add spawn trigger
scoreboard objectives add donator_area trigger
scoreboard objectives add staff_area trigger

scoreboard objectives add get_sign trigger
scoreboard objectives add replace_sign trigger
scoreboard objectives add entity_data trigger
scoreboard objectives add switch_time trigger
scoreboard objectives add toggle_gamemode trigger
scoreboard objectives add pose trigger
scoreboard objectives add hat trigger
scoreboard objectives add get_head trigger
scoreboard objectives add fake_block trigger
scoreboard objectives add restart trigger
scoreboard objectives add lock_all trigger
scoreboard objectives add unlock_nearest trigger
scoreboard objectives add mini_block trigger
scoreboard objectives add item_font trigger
scoreboard objectives add options trigger
scoreboard objectives add world_info trigger

scoreboard objectives add wand trigger
scoreboard objectives add blingedit trigger
scoreboard objectives add dropfill trigger
scoreboard objectives add spline trigger

# Options
scoreboard objectives add night_vis_option dummy
scoreboard objectives add sign_interaction dummy
scoreboard objectives add invis_indicators dummy
scoreboard objectives add permanent_socks dummy

#
scoreboard objectives add glow_time dummy
scoreboard objectives add is_spectator dummy

scoreboard objectives add leave_count custom:leave_game
scoreboard objectives add in_dimension dummy

# Teams
team add builder
team modify builder color aqua
team modify builder prefix {"text":"Builder | ","hoverEvent":{"action":"show_text","value":"Builder"}}

team add dev
team modify dev color light_purple
team modify dev prefix {"text":"Builder | ","hoverEvent":{"action":"show_text","value":"Datapack Developer and Builder"}}

team add op_builder
team modify op_builder color gold
team modify op_builder prefix {"text":"Builder | ","hoverEvent":{"action":"show_text","value":"Opped Builder"}}

team add gray_color
team modify gray_color color gray
team add red_color
team modify red_color color red

#

execute unless score <pack> global matches 1 run function build:update_pack_config

execute in overworld run forceload add 0 0 -1 -1
execute in the_nether run forceload add 0 0 -1 -1
execute in pandamium:staff_world run forceload add 0 0 -1 -1

scoreboard players set <16> variable 16
scoreboard players set <32> variable 32

execute unless score <next_uid> global = <next_uid> global run scoreboard players set <next_uid> global 2

say Loaded Pandamium Builder Datapack by DorkOrc

function build:tick_loop
function build:main_loop
function build:slow_loop

#
