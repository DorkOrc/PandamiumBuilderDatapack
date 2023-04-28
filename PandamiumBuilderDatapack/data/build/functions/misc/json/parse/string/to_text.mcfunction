data modify storage build:json char set string storage build:json string 0 1
data modify storage build:json string set string storage build:json string 1

execute if data storage build:json {char:'\\'} run function build:misc/json/parse/string/escape_character
execute if data storage build:json {char:'\\'} run data modify storage build:json stack[-1].text append from storage build:json escaped_character
execute unless data storage build:json {char:'\\'} unless data storage build:json {char:'"'} run data modify storage build:json stack[-1].text append from storage build:json char

execute unless data storage build:json {char:'"'} run function build:misc/json/parse/string/to_text
