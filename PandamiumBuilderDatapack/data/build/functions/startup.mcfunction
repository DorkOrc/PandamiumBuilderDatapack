scoreboard objectives add global dummy
scoreboard objectives add variable dummy
scoreboard objectives add constant dummy
scoreboard objectives add uid dummy
scoreboard objectives add builder_perms dummy

#

scoreboard objectives add nether_portal_cooldown dummy

# Triggers
scoreboard objectives add set_block trigger
scoreboard objectives add set_block.target dummy

scoreboard objectives add spawn trigger
scoreboard objectives add donator_area trigger
scoreboard objectives add staff_area trigger
scoreboard objectives add switch_world trigger

scoreboard objectives add get_sign trigger
scoreboard objectives add replace_sign trigger
scoreboard objectives add entity_data trigger
scoreboard objectives add time trigger
scoreboard objectives add toggle_gamemode trigger
scoreboard objectives add pose trigger
scoreboard objectives add hat trigger
scoreboard objectives add get_head trigger
scoreboard objectives add fake_block trigger
scoreboard objectives add restart trigger
scoreboard objectives add lock_all trigger
scoreboard objectives add unlock_nearest trigger
scoreboard objectives add mini_blocks trigger
scoreboard objectives add give_all_mob_heads trigger
scoreboard objectives add item_font trigger
scoreboard objectives add sign_font trigger
scoreboard objectives add options trigger
scoreboard objectives add world_info trigger
scoreboard objectives add save_mob trigger
scoreboard objectives add save_mob.spawn trigger

scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard objectives add delhome trigger
scoreboard objectives add homes trigger

scoreboard objectives add wand trigger
scoreboard objectives add blingedit trigger
scoreboard objectives add dropfill trigger
scoreboard objectives add spline trigger

#

scoreboard objectives add font.gradient.left_index dummy

scoreboard objectives add home_1_x dummy
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy
scoreboard objectives add home_1_d dummy

scoreboard objectives add home_2_x dummy
scoreboard objectives add home_2_y dummy
scoreboard objectives add home_2_z dummy
scoreboard objectives add home_2_d dummy

scoreboard objectives add home_3_x dummy
scoreboard objectives add home_3_y dummy
scoreboard objectives add home_3_z dummy
scoreboard objectives add home_3_d dummy

scoreboard objectives add home_4_x dummy
scoreboard objectives add home_4_y dummy
scoreboard objectives add home_4_z dummy
scoreboard objectives add home_4_d dummy

scoreboard objectives add home_5_x dummy
scoreboard objectives add home_5_y dummy
scoreboard objectives add home_5_z dummy
scoreboard objectives add home_5_d dummy

scoreboard objectives add home_6_x dummy
scoreboard objectives add home_6_y dummy
scoreboard objectives add home_6_z dummy
scoreboard objectives add home_6_d dummy

scoreboard objectives add home_7_x dummy
scoreboard objectives add home_7_y dummy
scoreboard objectives add home_7_z dummy
scoreboard objectives add home_7_d dummy

scoreboard objectives add home_8_x dummy
scoreboard objectives add home_8_y dummy
scoreboard objectives add home_8_z dummy
scoreboard objectives add home_8_d dummy

scoreboard objectives add home_9_x dummy
scoreboard objectives add home_9_y dummy
scoreboard objectives add home_9_z dummy
scoreboard objectives add home_9_d dummy

scoreboard objectives add home_10_x dummy
scoreboard objectives add home_10_y dummy
scoreboard objectives add home_10_z dummy
scoreboard objectives add home_10_d dummy


# Reset triggers
scoreboard players reset set_block trigger

scoreboard players reset spawn trigger
scoreboard players reset donator_area trigger
scoreboard players reset staff_area trigger
scoreboard players reset switch_world trigger

scoreboard players reset get_sign trigger
scoreboard players reset replace_sign trigger
scoreboard players reset entity_data trigger
scoreboard players reset time trigger
scoreboard players reset toggle_gamemode trigger
scoreboard players reset pose trigger
scoreboard players reset hat trigger
scoreboard players reset get_head trigger
scoreboard players reset fake_block trigger
scoreboard players reset restart trigger
scoreboard players reset lock_all trigger
scoreboard players reset unlock_nearest trigger
scoreboard players reset mini_blocks trigger
scoreboard players reset give_all_mob_heads trigger
scoreboard players reset item_font trigger
scoreboard players reset options trigger
scoreboard players reset world_info trigger
scoreboard players reset save_mob trigger
scoreboard players reset save_mob.spawn trigger

scoreboard players reset home trigger
scoreboard players reset sethome trigger
scoreboard players reset delhome trigger
scoreboard players reset homes trigger

scoreboard players reset wand trigger
scoreboard players reset blingedit trigger
scoreboard players reset dropfill trigger
scoreboard players reset spline trigger


# Options
scoreboard objectives add night_vis_option dummy
scoreboard objectives add sign_interaction dummy
scoreboard objectives add invis_indicators dummy
scoreboard objectives add permanent_socks dummy
scoreboard objectives add permanent_elytra dummy

#
scoreboard objectives add glow_time dummy
scoreboard objectives add is_spectator dummy
scoreboard objectives add can_toggle_tnt dummy

scoreboard objectives add detect.leave custom:leave_game
scoreboard objectives add in_dimension dummy

# Teams
team add builder
team modify builder color aqua
team modify builder prefix "Builder | "

team add op_builder
team modify op_builder color gold
team modify op_builder prefix "Builder | "

team add dev
team modify dev color light_purple
team modify dev prefix "Dev | "

team add gray_color
team modify gray_color color gray
team add red_color
team modify red_color color red

#

scoreboard players reset * detect.leave

#

execute in the_nether run forceload add -1 -1 0 0
execute in overworld run forceload add -1 -1 0 0
execute in the_end run forceload add -1 -1 0 0
execute in pandamium:staff_world run forceload add -1 -1 0 0

execute in build:release/overworld run forceload add -1 -1 0 0
execute in build:release/the_nether run forceload add -1 -1 0 0
execute in build:snapshot/overworld run forceload add -1 -1 0 0
execute in build:snapshot/the_nether run forceload add -1 -1 0 0
execute in build:event_world run forceload add -1 -1 0 0

worldborder set 1024
worldborder center 0.0 0.0

scoreboard players set <-1> variable -1
scoreboard players set <16> variable 16
scoreboard players set <32> variable 32
scoreboard players set <100> variable 100
scoreboard players set #ticks_per_day constant 1728000
scoreboard players set #ticks_per_hour constant 72000
scoreboard players set #ticks_per_minute constant 1200
scoreboard players set #ticks_per_second constant 20
scoreboard players set #-1 constant -1
scoreboard players set #2 constant 2
scoreboard players set #60 constant 60
scoreboard players set #85 constant 85
scoreboard players set #96 constant 96
scoreboard players set #100 constant 100

execute store success score <server> global if score <server> global matches 1
execute unless score <next_uid> global = <next_uid> global run scoreboard players set <next_uid> global 2

data modify storage build:dictionary font.menu.custom_fonts.info set value '["This feature is currently a work\\nin progress and is not directly\\ncompatible with regular colours.\\nYou will have to pick the ",{"text":"Reset","bold":true},"\\nfont to pick a solid colour\\nagain."]'
data modify storage build:dictionary font.menu.custom_fonts.rainbow.button set value '[{"color":"#FF0000","text":"["},{"color":"#FF9F00","text":"R"},{"color":"#BFFF00","text":"a"},{"color":"#1FFF00","text":"i"},{"color":"#00FF7F","text":"n"},{"color":"#00DFFF","text":"b"},{"color":"#003FFF","text":"o"},{"color":"#5F00FF","text":"w"},{"color":"#FF00FF","text":"]"}]'
data modify storage build:dictionary font.menu.custom_fonts.rainbow.hover_event set value '[{"color":"#FF0000","text":"C"},{"color":"#FF1F00","text":"l"},{"color":"#FF4F00","text":"i"},{"color":"#FF6F00","text":"c"},{"color":"#FF9F00","text":"k"},{"color":"#FFBF00","text":" "},{"color":"#FFEF00","text":"t"},{"color":"#EFFF00","text":"o"},{"color":"#BFFF00","text":" "},{"color":"#9FFF00","text":"p"},{"color":"#6FFF00","text":"i"},{"color":"#4FFF00","text":"c"},{"color":"#1FFF00","text":"k"},{"color":"#00FF00","text":" "},{"color":"#00FF2F","text":"c"},{"color":"#00FF4F","text":"u"},{"color":"#00FF7F","text":"s"},{"color":"#00FF9F","text":"t"},{"color":"#00FFCF","text":"o"},{"color":"#00FFEF","text":"m"},{"color":"#00DFFF","text":" "},{"color":"#00BFFF","text":"f"},{"color":"#008FFF","text":"o"},{"color":"#006FFF","text":"n"},{"color":"#003FFF","text":"t"},{"color":"#001FFF","text":" "},[{"text":"","bold":true},{"color":"#0F00FF","text":"R"},{"color":"#2F00FF","text":"a"},{"color":"#5F00FF","text":"i"},{"color":"#7F00FF","text":"n"},{"color":"#AF00FF","text":"b"},{"color":"#CF00FF","text":"o"},{"color":"#FF00FF","text":"w"}]]'
data modify storage build:dictionary font.menu.custom_gradients_page.button set value '{"text":"[Custom Gradients]","color":"white"}'
data modify storage build:dictionary font.menu.custom_gradients_page.hover_event set value '[{"text":"Click to see ","color":"white"},{"text":"Custom Gradients","bold":true}]'

function build:tick_loop
function build:main_loop
function build:slow_loop

#
