execute store result score <colour> variable run data get entity @s Inventory[{Slot:-106b}].tag.display.color
scoreboard players add <colour> variable 2130706432

fill ~-6 ~-6 ~-6 ~6 ~6 ~6 command_block{auto:1b,Command:"function build:custom_blocks/coloured_water_cauldron/main"} replace barrel{CustomName:'{"italic":false,"color":"blue","text":"Coloured Water Cauldron"}'}

advancement revoke @s only build:detect/custom_blocks/coloured_water_cauldron
