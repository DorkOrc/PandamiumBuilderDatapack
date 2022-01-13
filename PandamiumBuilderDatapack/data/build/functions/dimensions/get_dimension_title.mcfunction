# Input: <dim> variable

data merge storage build:temp {Dimension:'unrecognised-dimension'}

execute if score <dim> variable matches -100 run data merge storage build:temp {Dimension:'The Overworld (Default)'}
execute if score <dim> variable matches -101 run data merge storage build:temp {Dimension:'The Nether (Default)'}
execute if score <dim> variable matches -102 run data merge storage build:temp {Dimension:'The End (Default)'}
execute if score <dim> variable matches -103 run data merge storage build:temp {Dimension:'The Staff World'}

execute if score <dim> variable matches 0 run data merge storage build:temp {Dimension:'The Overworld (Release)'}
execute if score <dim> variable matches 1 run data merge storage build:temp {Dimension:'The Nether (Release)'}

execute if score <dim> variable matches 100 run data merge storage build:temp {Dimension:'The Overworld (Snapshot)'}
execute if score <dim> variable matches 101 run data merge storage build:temp {Dimension:'The Nether (Snapshot)'}

execute if score <dim> variable matches 200 run data merge storage build:temp {Dimension:'The Overworld (Event)'}
