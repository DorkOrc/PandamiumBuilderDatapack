tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Homes List","bold":true}," ========"]

scoreboard players operation <dim> variable = @s home_1_d
function build:dimensions/get_dimension_title
execute if score @s home_1_y = @s home_1_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 1","bold":true}]}},{"text":"Home 1: ","bold":true},{"score":{"name":"@s","objective":"home_1_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_1_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_1_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_1_y = @s home_1_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 1","bold":true}," Here"]}},{"text":"Home 1: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_2_d
function build:dimensions/get_dimension_title
execute if score @s home_2_y = @s home_2_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 2","bold":true}]}},{"text":"Home 2: ","bold":true},{"score":{"name":"@s","objective":"home_2_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_2_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_2_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_2_y = @s home_2_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 2"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 2","bold":true}," Here"]}},{"text":"Home 2: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_3_d
function build:dimensions/get_dimension_title
execute if score @s home_3_y = @s home_3_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 3","bold":true}]}},{"text":"Home 3: ","bold":true},{"score":{"name":"@s","objective":"home_3_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_3_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_3_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_3_y = @s home_3_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 3"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 3","bold":true}," Here"]}},{"text":"Home 3: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_4_d
function build:dimensions/get_dimension_title
execute if score @s home_4_y = @s home_4_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 4","bold":true}]}},{"text":"Home 4: ","bold":true},{"score":{"name":"@s","objective":"home_4_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_4_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_4_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_4_y = @s home_4_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 4"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 4","bold":true}," Here"]}},{"text":"Home 4: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_5_d
function build:dimensions/get_dimension_title
execute if score @s home_5_y = @s home_5_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 5","bold":true}]}},{"text":"Home 5: ","bold":true},{"score":{"name":"@s","objective":"home_5_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_5_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_5_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_5_y = @s home_5_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 5"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 5","bold":true}," Here"]}},{"text":"Home 5: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_6_d
function build:dimensions/get_dimension_title
execute if score @s home_6_y = @s home_6_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 6"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 6","bold":true}]}},{"text":"Home 6: ","bold":true},{"score":{"name":"@s","objective":"home_6_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_6_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_6_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_6_y = @s home_6_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 6"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 6","bold":true}," Here"]}},{"text":"Home 6: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_7_d
function build:dimensions/get_dimension_title
execute if score @s home_7_y = @s home_7_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 7"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 7","bold":true}]}},{"text":"Home 7: ","bold":true},{"score":{"name":"@s","objective":"home_7_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_7_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_7_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_7_y = @s home_7_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 7"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 7","bold":true}," Here"]}},{"text":"Home 7: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_8_d
function build:dimensions/get_dimension_title
execute if score @s home_8_y = @s home_8_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 8"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 8","bold":true}]}},{"text":"Home 8: ","bold":true},{"score":{"name":"@s","objective":"home_8_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_8_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_8_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_8_y = @s home_8_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 8"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 8","bold":true}," Here"]}},{"text":"Home 8: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_9_d
function build:dimensions/get_dimension_title
execute if score @s home_9_y = @s home_9_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 9"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 9","bold":true}]}},{"text":"Home 9: ","bold":true},{"score":{"name":"@s","objective":"home_9_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_9_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_9_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_9_y = @s home_9_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 9"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 9","bold":true}," Here"]}},{"text":"Home 9: ","bold":true},{"text":"Not Set","color":"gray"}]

scoreboard players operation <dim> variable = @s home_10_d
function build:dimensions/get_dimension_title
execute if score @s home_10_y = @s home_10_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger home set 10"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"aqua"},{"text":"Home 10","bold":true}]}},{"text":"Home 10: ","bold":true},{"score":{"name":"@s","objective":"home_10_x"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_10_y"},"color":"aqua"}," ",{"score":{"name":"@s","objective":"home_10_z"},"color":"aqua"}," in ",{"nbt":"Dimension","storage":"build:temp","color":"aqua"}]
execute unless score @s home_10_y = @s home_10_y run tellraw @s [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger sethome set 10"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Set ","color":"green"},{"text":"Home 10","bold":true}," Here"]}},{"text":"Home 10: ","bold":true},{"text":"Not Set","color":"gray"}]

tellraw @s {"text":"============================","color":"aqua"}
