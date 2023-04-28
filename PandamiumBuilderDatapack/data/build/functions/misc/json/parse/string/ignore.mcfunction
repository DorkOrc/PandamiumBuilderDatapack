data modify storage build:json char set string storage build:json string 0 1
data modify storage build:json string set string storage build:json string 1

execute if data storage build:json {char:'\\'} run function build:misc/json/parse/string/escape_character

execute unless data storage build:json {char:'"'} run function build:misc/json/parse/string/ignore
