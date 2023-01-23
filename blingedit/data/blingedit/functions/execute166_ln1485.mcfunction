scoreboard players set @s blingedit.grid_particles_timer 0
scoreboard players operation Global p_xmin = Global _min_0
scoreboard players operation Global p_ymin = Global _min_1
scoreboard players operation Global p_zmin = Global _min_2
scoreboard players remove Global p_xmin 450
scoreboard players add Global p_ymin 175
scoreboard players remove Global p_zmin 450
scoreboard players operation Global p_xmax = Global _max_0
scoreboard players operation Global p_ymax = Global _max_1
scoreboard players operation Global p_zmax = Global _max_2
scoreboard players add Global p_xmax 450
scoreboard players add Global p_ymax 1075
scoreboard players add Global p_zmax 450
function blingedit:draw_particle_box
function blingedit:get_dest_minmax
execute if score Global has_dest_box matches 1.. run function blingedit:execute165_ln1493
