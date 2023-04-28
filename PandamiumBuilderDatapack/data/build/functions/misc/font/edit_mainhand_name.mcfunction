# Apply font changes to display.Name (returns <text_changed> and <valid_option>)

data modify storage build:temp display set value {}
data modify storage build:temp display set from storage build:temp nbt.SelectedItem.tag.display

data modify storage build:temp Text set from storage build:temp display.Name
execute in pandamium:staff_world run function build:misc/font/do_edit
data modify storage build:temp display.Name set from storage build:temp Text

# Update display
execute if score <text_changed> variable matches 1 run item modify entity @s weapon.mainhand build:font/replace_display_from_storage
