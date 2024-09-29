# handling joins
execute as @a unless score @s previously_offline matches 0 at @s run function pandabuild:detect/join_game/main

# handling deaths
execute as @a run scoreboard players operation @s previously_dead = @s dead
scoreboard players set @a dead 1
scoreboard players set @e[type=player] dead 0

execute as @a[scores={dead=1,previously_dead=0}] at @s run function pandabuild:detect/die/main
execute as @e[type=player,scores={previously_dead=1}] at @s run function pandabuild:detect/respawn/main

# handling triggers
execute as @a[scores={spawn.snapshot.original.overworld=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.original.overworld"}
execute as @a[scores={spawn.snapshot.original.the_nether=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.original.the_nether"}

execute as @a[scores={spawn.snapshot.variant_1.overworld=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.variant_1.overworld"}
execute as @a[scores={spawn.snapshot.variant_1.the_nether=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.variant_1.the_nether"}

execute as @a[scores={spawn=1..}] at @s run function pandabuild:triggers/spawn/main
