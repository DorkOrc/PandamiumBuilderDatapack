data remove storage build:editor queue[0]

execute if data storage build:editor this_action{action:'init_fill'} run function build:impl/editor/queue/actions/init_fill
execute if data storage build:editor this_action{action:'do_fill'} run function build:impl/editor/queue/actions/do_fill
execute if data storage build:editor this_action{action:'init_replace'} run function build:impl/editor/queue/actions/init_replace
execute if data storage build:editor this_action{action:'do_replace'} run function build:impl/editor/queue/actions/do_replace
