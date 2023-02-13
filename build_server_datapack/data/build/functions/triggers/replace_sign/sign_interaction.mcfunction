advancement revoke @s only build:interact_with_sign

execute if score @s sign_interaction matches 1 run function build:triggers/replace_sign/run
