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
execute as @a[scores={spawn.snapshot.sandbox=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.sandbox"}

execute as @a[scores={spawn.snapshot.christmas.overworld=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.christmas.overworld"}
execute as @a[scores={spawn.snapshot.christmas.the_nether=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.christmas.the_nether"}

execute as @a[scores={spawn.snapshot.halloween.overworld=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.halloween.overworld"}
execute as @a[scores={spawn.snapshot.halloween.the_nether=1..}] run function pandabuild:triggers/spawn/shortcut {trigger:"spawn.snapshot.halloween.the_nether"}

execute as @a[scores={spawn=1..}] at @s run function pandabuild:triggers/spawn/main

# test
#execute at @a[predicate=pandabuild:in_dimension/pandabuild/servers/snapshot/variant_2/overworld] run fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 pandamium:autumn replace minecraft:forest
#execute at @a[predicate=pandabuild:in_dimension/pandabuild/servers/snapshot/variant_2/overworld] run fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 pandamium:autumn replace minecraft:jungle
#execute at @a[predicate=pandabuild:in_dimension/pandabuild/servers/snapshot/variant_2/overworld] run fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 pandamium:autumn replace minecraft:sparse_jungle
#execute at @a[predicate=pandabuild:in_dimension/pandabuild/servers/snapshot/variant_2/overworld] run fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 pandamium:autumn replace minecraft:stony_peaks
#execute at @a[predicate=pandabuild:in_dimension/pandabuild/servers/snapshot/variant_2/overworld] run fillbiome ~-10 ~-10 ~-10 ~10 ~10 ~10 pandamium:autumn replace minecraft:stony_shore
