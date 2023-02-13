execute if score @s restart matches 1.. unless score @s builder_perms matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Restart]","color":"dark_red"}," no"]
execute if score @s restart matches 1.. if score @s builder_perms matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Restart]","color":"dark_red"}," Confirm Restart! ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Click to Restart the server in 15 Seconds","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -2"}}]
execute if score @s restart matches 1.. if score @s builder_perms matches 2 run tellraw @s [{"text":"","color":"red"},{"text":"[Restart]","color":"dark_red"}," Confirm Restart! ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Click to Restart the server in 15 Seconds","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -2"}}," ",{"text":"[O]","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"Click to  Restart the server with Reload kick-message","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -100"}}]

execute if score @s restart matches -2 run tellraw @a [{"text":"[Restart] ","color":"red"},{"selector":"@s"}," has scheduled a server restart! ",{"text":"[X]","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"Cancel Restart","color":"dark_red"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -3"}}]
execute if score @s restart matches -2 run scoreboard players set <restart_countdown> global 15
execute if score @s restart matches -2 run function build:misc/restart_countdown

execute if score @s restart matches -3 unless score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" The server is not restarting!","color":"red"}]
execute if score @s restart matches -3 if score <restart_countdown> global matches 1.. run tellraw @a [{"text":"[Restart] ","color":"red"},{"selector":"@s"}," cancelled the server restart!"]
execute if score @s restart matches -3 run scoreboard players set <restart_countdown> global -1
execute if score @s restart matches -3 run schedule clear build:misc/restart_countdown

execute if score @s restart matches -100 run say Restarted the server to reload the datapack.
execute if score @s restart matches -100 run function build:triggers/restart/reload
