# Add dummy data
execute if score <font> variable matches 101..104 unless data storage build:temp nbt.SelectedItem.tag.display.Lore[0] run data modify storage build:temp nbt.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 102..104 unless data storage build:temp nbt.SelectedItem.tag.display.Lore[1] run data modify storage build:temp nbt.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 103..104 unless data storage build:temp nbt.SelectedItem.tag.display.Lore[2] run data modify storage build:temp nbt.SelectedItem.tag.display.Lore append value '{"text":""}'
execute if score <font> variable matches 104..104 unless data storage build:temp nbt.SelectedItem.tag.display.Lore[3] run data modify storage build:temp nbt.SelectedItem.tag.display.Lore append value '{"text":""}'
execute unless data storage build:temp nbt.SelectedItem.tag.display.Name run data modify storage build:temp nbt.SelectedItem.tag.display.Name set value '{"text":""}'

data modify storage build:temp display set value {}
data modify storage build:temp display set from storage build:temp nbt.SelectedItem.tag.display

# Make changes (functions return <text_changed>)
scoreboard players set <valid_option> variable 0
execute if score <font> variable matches 101..104 run scoreboard players set <valid_option> variable 1

execute if score <font> variable matches 101 run function build:misc/font/modify_lore/line_1
execute if score <font> variable matches 102 run function build:misc/font/modify_lore/line_2
execute if score <font> variable matches 103 run function build:misc/font/modify_lore/line_3
execute if score <font> variable matches 104 run function build:misc/font/modify_lore/line_4

# Remove dummy data where necessary
execute if data storage build:temp display{Name:'{"text":""}'} run data remove storage build:temp display.Name
function build:misc/font/modify_lore/trim

# Update display
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand build:font/replace_display_from_storage
