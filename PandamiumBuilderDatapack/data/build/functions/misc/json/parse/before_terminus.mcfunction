execute if data storage build:json {char:'}'} if data storage build:json stack[-1].flags{hover_event:1b} run function build:misc/json/parse/before_terminus/terminate_hover_event
execute if score <recognised> variable matches 0 if data storage build:json {char:'}'} run function build:misc/json/parse/before_terminus/terminate
execute if score <recognised> variable matches 0 if data storage build:json {char:']'} run function build:misc/json/parse/before_terminus/terminate
