execute if data storage build:json {key:'text'} store success score <recognised> variable run function build:misc/json/parse/string/to_text
execute if score <recognised> variable matches 0 if data storage build:json {key:'extra'} store success score <recognised> variable run function build:misc/json/parse/string/to_extra
execute if score <recognised> variable matches 0 if data storage build:json {key:'contents'} if data storage build:json stack[-1].flags{hover_event:1b} store success score <recognised> variable run function build:misc/json/parse/string/to_extra
execute if score <recognised> variable matches 0 if data storage build:json {key:'color'} if data storage build:json stack[-1].flags{is_root:1b} run function build:misc/json/parse/after_key/store_root_string_attribute
execute if score <recognised> variable matches 0 if data storage build:json {key:'font'} if data storage build:json stack[-1].flags{is_root:1b} run function build:misc/json/parse/after_key/store_root_string_attribute
execute if score <recognised> variable matches 0 store success score <recognised> variable run function build:misc/json/parse/string/ignore

scoreboard players set <next_state> variable 0
scoreboard players set <recognised> variable 1
