scoreboard players set <has_asked> variable 0

# Print confirmation messages

# Force purchase if no confirmation message exists
execute if score <has_asked> variable matches 0 run scoreboard players add <section> variable 10
execute if score <has_asked> variable matches 0 run scoreboard players operation @s mini_blocks = <reference_value> variable
