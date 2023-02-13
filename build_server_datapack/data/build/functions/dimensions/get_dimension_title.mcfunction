# Input: <dim> variable

data merge storage build:temp {Dimension:'unrecognised-dimension'}

execute if score <dim> variable matches -100 run data merge storage build:temp {Dimension:'The Overworld (Default)'}
execute if score <dim> variable matches -99 run data merge storage build:temp {Dimension:'The Nether (Default)'}
execute if score <dim> variable matches -98 run data merge storage build:temp {Dimension:'The End (Default)'}
execute if score <dim> variable matches -97 run data merge storage build:temp {Dimension:'The Staff World'}

execute if score <dim> variable matches 0 run data merge storage build:temp {Dimension:'The Overworld (Release)'}
execute if score <dim> variable matches 1 run data merge storage build:temp {Dimension:'The Nether (Release)'}

execute if score <dim> variable matches 100 run data merge storage build:temp {Dimension:'The Overworld (Snapshot)'}
execute if score <dim> variable matches 101 run data merge storage build:temp {Dimension:'The Nether (Snapshot)'}

execute if score <dim> variable matches 200 run data merge storage build:temp {Dimension:'The Overworld (Event)'}
execute if score <dim> variable matches 201 run data merge storage build:temp {Dimension:'The §1BLUEPRINT§r Overworld'}
