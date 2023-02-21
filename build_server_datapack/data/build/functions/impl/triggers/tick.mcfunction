execute as @a[scores={spawn=-2147483648..}] unless score @s spawn matches 0 at @s run function build:impl/triggers/spawn/main
execute as @a[scores={toggle_spectator_mode=-2147483648..}] unless score @s toggle_spectator_mode matches 0 at @s run function build:impl/triggers/toggle_spectator_mode/main
execute as @a[scores={world=-2147483648..}] unless score @s world matches 0 at @s run function build:impl/triggers/world/main
