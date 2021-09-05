tellraw @s ""
tellraw @s "BlingEdit Options:"
tellraw @s ["Region Particle Outline: ",{"text":"[On]","clickEvent":{"action":"run_command","value":"/trigger blingedit set -64"},"color":"green"}," ",{"text":"[Off]","clickEvent":{"action":"run_command","value":"/trigger blingedit set -65"},"color":"red"}]
gamerule sendCommandFeedback false