data merge storage build:options {descriptions:{sign_interaction: '{"text":"Right clicking a sign while holding a Book and Quill or Sign (with nbt) will automatically run the [replace_sign] trigger","color":"gray"}',invis_indicators: '{"text":"Red particles appear at the base of any invisible item frames or armour stands","color":"gray"}'}}

# Menu
execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute unless score @s night_vis_option matches 0..2 run scoreboard players set @s night_vis_option 0
execute if score @s options matches 1.. if score @s night_vis_option matches 0 run tellraw @s [{"text":"Night Vision Option: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Night Vision Option","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"None","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s night_vis_option matches 1 run tellraw @s [{"text":"Night Vision Option: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Night Vision Option","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"Always","color":"yellow","bold":true}]
execute if score @s options matches 1.. if score @s night_vis_option matches 2 run tellraw @s [{"text":"Night Vision Option: ","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"Night Vision Option","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}},{"text":"Spectator Mode Only","color":"yellow","bold":true}]

execute if score @s options matches 1.. if entity @s[scores={builder_perms=1..}] unless score @s sign_interaction matches 1 run tellraw @s [{"text":"Sign Interaction: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Sign Interaction\n","color":"aqua"},{"nbt":"descriptions.sign_interaction","storage":"build:options","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if entity @s[scores={builder_perms=1..}] if score @s sign_interaction matches 1 run tellraw @s [{"text":"Sign Interaction: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Sign Interaction\n","color":"aqua"},{"nbt":"descriptions.sign_interaction","storage":"build:options","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if entity @s[scores={builder_perms=1..}] unless score @s invis_indicators matches 1 run tellraw @s [{"text":"Invisible Entity Indicators: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Invisible Entity Interaction\n","color":"aqua"},{"nbt":"descriptions.invis_indicators","storage":"build:options","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}},{"text":"False","color":"yellow","bold":true}]
execute if score @s options matches 1.. if entity @s[scores={builder_perms=1..}] if score @s invis_indicators matches 1 run tellraw @s [{"text":"Invisible Entity Indicators: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Invisible Entity Interaction\n","color":"aqua"},{"nbt":"descriptions.invis_indicators","storage":"build:options","interpret":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}},{"text":"True","color":"yellow","bold":true}]

execute if score @s options matches 1.. if entity @s[scores={builder_perms=2..}] if score <server> persistent matches 0 run tellraw @s [{"text":"Datapack Server Config: ","color":"light_purple","hoverEvent":{"action":"show_text","value":[{"text":"Datapack Server Config","color":"light_purple"},{"text":"\nChanging this requires a reload.\n/reload","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}},{"text":"Release","color":"yellow","bold":true}]
execute if score @s options matches 1.. if entity @s[scores={builder_perms=2..}] if score <server> persistent matches 1 run tellraw @s [{"text":"Datapack Server Config: ","color":"light_purple","hoverEvent":{"action":"show_text","value":[{"text":"Datapack Server Config","color":"light_purple"},{"text":"\nChanging this requires a reload.\n/reload","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}},{"text":"Snapshot","color":"yellow","bold":true}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

# Toggle Options
execute if score @s options matches -1 run scoreboard players add @s night_vis_option 1
execute if score @s options matches -1 if score @s night_vis_option matches 3 run scoreboard players set @s night_vis_option 0
execute if score @s options matches -1 if score @s night_vis_option matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set ",{"text":"Night Vision Option","bold":true,"color":"yellow"}," to ",{"text":"None","color":"aqua"},"!"]
execute if score @s options matches -1 if score @s night_vis_option matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set ",{"text":"Night Vision Option","bold":true,"color":"yellow"}," to ",{"text":"Always","color":"aqua"},"!"]
execute if score @s options matches -1 if score @s night_vis_option matches 2 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Set ",{"text":"Night Vision Option","bold":true,"color":"yellow"}," to ",{"text":"Spectator Mode Only","color":"aqua"},"!"]
execute if score @s options matches -1 if score @s night_vis_option matches 0 run effect clear @s night_vision
execute if score @s options matches -1 if score @s night_vis_option matches 1 run effect give @s night_vision 1000000 0 true
execute if score @s options matches -1 if score @s night_vis_option matches 2 unless entity @s[gamemode=spectator] run effect clear @s night_vision

execute if score @s options matches -64 store success score @s sign_interaction unless score @s sign_interaction matches 1
execute if score @s options matches -64 if score @s sign_interaction matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Sign Interaction","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -64 if score @s sign_interaction matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Sign Interaction","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -65 store success score @s invis_indicators unless score @s invis_indicators matches 1
execute if score @s options matches -65 if score @s invis_indicators matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Disabled ","color":"aqua"},{"text":"Invisible Entity Indicators","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -65 if score @s invis_indicators matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"},{"text":" Enabled ","color":"aqua"},{"text":"Invisible Entity Indicators","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -128 if score <server> persistent matches 0 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" Are you sure you want to switch Datapack Server Config to Snapshot? ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Switch Datapack Config to ","color":"dark_green"},{"text":"Snapshot","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -129"}}]
execute if score @s options matches -128 if score <server> persistent matches 1 run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" Are you sure you want to switch Datapack Server Config to Release? ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Switch Datapack Config to ","color":"dark_green"},{"text":"Release","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options set -129"}}]

execute if score @s options matches -129 store success score <server> persistent unless score <server> persistent matches 1
execute if score @s options matches -129 if score <server> persistent matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Changed ",{"text":"Datapack Server Config","bold":true,"color":"yellow"}," to ",{"text":"Release","color":"aqua"},"!"]
execute if score @s options matches -129 if score <server> persistent matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," Changed ",{"text":"Datapack Server Config","bold":true,"color":"yellow"}," to ",{"text":"Snapshot","color":"aqua"},"!"]
execute if score @s options matches -129 run tellraw @s [{"text":"Run /reload","color":"gray"}]

# Error Messages
execute if score @s options matches ..-1 unless score @s options matches -1 unless entity @s[scores={builder_perms=1..,options=-65..-64}] unless entity @s[scores={builder_perms=2..,options=-129..-128}] run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" This is not a valid option!","color":"red"}]
