#CanPickUpLoot always 0b

execute if score @s entity_data matches -1 store success entity @e[tag=selected_entity,limit=1] Invulnerable byte 1 unless data storage build:entity_data {NBT:{Invulnerable:1b}}
execute if score @s entity_data matches -2 store success entity @e[tag=selected_entity,limit=1] NoAI byte 1 unless data storage build:entity_data {NBT:{NoAI:1b}}
execute if score @s entity_data matches -3 store success entity @e[tag=selected_entity,limit=1] NoGravity byte 1 unless data storage build:entity_data {NBT:{NoGravity:1b}}
execute if score @s entity_data matches -4 store success entity @e[tag=selected_entity,limit=1] Silent byte 1 unless data storage build:entity_data {NBT:{Silent:1b}}

execute if score @s entity_data matches -5 positioned as @s run tp @e[tag=selected_entity,limit=1] ~ ~ ~
execute if score @s entity_data matches -6 as @e[tag=selected_entity,limit=1] at @s run tp ~ ~0.0625 ~
execute if score @s entity_data matches -7 as @e[tag=selected_entity,limit=1] at @s run tp ~ ~-0.0625 ~
execute if score @s entity_data matches -8 as @e[tag=selected_entity,limit=1] at @s run tp ~ ~ ~-0.0625
execute if score @s entity_data matches -9 as @e[tag=selected_entity,limit=1] at @s run tp ~0.0625 ~ ~
execute if score @s entity_data matches -10 as @e[tag=selected_entity,limit=1] at @s run tp ~ ~ ~0.0625
execute if score @s entity_data matches -11 as @e[tag=selected_entity,limit=1] at @s run tp ~-0.0625 ~ ~

execute if score @s entity_data matches -12 at @e[tag=selected_entity,limit=1] run tp @e[tag=selected_entity,limit=1] ~ ~ ~ facing entity @p[tag=running_trigger] feet
execute if score @s entity_data matches -13 at @e[tag=selected_entity,limit=1] run tp @e[tag=selected_entity,limit=1] ~ ~ ~ facing entity @p[tag=running_trigger] eyes
execute if score @s entity_data matches -14 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s entity_data matches -15 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~22.5 ~
execute if score @s entity_data matches -16 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s entity_data matches -17 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~-22.5 ~
execute if score @s entity_data matches -18 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~ ~-2
execute if score @s entity_data matches -19 as @e[tag=selected_entity,limit=1] at @s run tp @s ~ ~ ~ ~ ~2

execute if score @s entity_data matches -20 run data modify entity @e[tag=selected_entity,limit=1] CustomName set from entity @p[tag=running_trigger] SelectedItem.tag.display.Name
execute if score @s entity_data matches -21 run data modify entity @e[tag=selected_entity,limit=1] CustomName set from entity @p[tag=running_trigger] SelectedItem.tag.pages[0]

execute if score @s entity_data matches -22 store success entity @e[tag=selected_entity,limit=1] CustomNameVisible byte 1 unless data storage build:entity_data {NBT:{CustomNameVisible:1b}}
execute if score @s entity_data matches -23 store success entity @e[tag=selected_entity,limit=1] Glowing byte 1 unless data storage build:entity_data {NBT:{Glowing:1b}}
execute if score @s entity_data matches -24 store success entity @e[tag=selected_entity,limit=1] HasVisualFire byte 1 unless data storage build:entity_data {NBT:{HasVisualFire:1b}}

execute if score @s entity_data matches -25 run data merge entity @e[tag=selected_entity,limit=1] {Age:-2147483647}
execute if score @s entity_data matches -26 run data merge entity @e[tag=selected_entity,limit=1] {Age:0}

execute if score @s entity_data matches -27 run data merge entity @e[tag=selected_entity,limit=1] {Color:0b}
execute if score @s entity_data matches -28 run data merge entity @e[tag=selected_entity,limit=1] {Color:1b}
execute if score @s entity_data matches -29 run data merge entity @e[tag=selected_entity,limit=1] {Color:2b}
execute if score @s entity_data matches -30 run data merge entity @e[tag=selected_entity,limit=1] {Color:3b}
execute if score @s entity_data matches -31 run data merge entity @e[tag=selected_entity,limit=1] {Color:4b}
execute if score @s entity_data matches -32 run data merge entity @e[tag=selected_entity,limit=1] {Color:5b}
execute if score @s entity_data matches -33 run data merge entity @e[tag=selected_entity,limit=1] {Color:6b}
execute if score @s entity_data matches -34 run data merge entity @e[tag=selected_entity,limit=1] {Color:7b}
execute if score @s entity_data matches -35 run data merge entity @e[tag=selected_entity,limit=1] {Color:8b}
execute if score @s entity_data matches -36 run data merge entity @e[tag=selected_entity,limit=1] {Color:9b}
execute if score @s entity_data matches -37 run data merge entity @e[tag=selected_entity,limit=1] {Color:10b}
execute if score @s entity_data matches -38 run data merge entity @e[tag=selected_entity,limit=1] {Color:11b}
execute if score @s entity_data matches -39 run data merge entity @e[tag=selected_entity,limit=1] {Color:12b}
execute if score @s entity_data matches -40 run data merge entity @e[tag=selected_entity,limit=1] {Color:13b}
execute if score @s entity_data matches -41 run data merge entity @e[tag=selected_entity,limit=1] {Color:14b}
execute if score @s entity_data matches -42 run data merge entity @e[tag=selected_entity,limit=1] {Color:15b}
execute if score @s entity_data matches -43 run data merge entity @e[tag=selected_entity,limit=1] {Color:16b}

execute if score @s entity_data matches -44 store success entity @e[tag=selected_entity,limit=1] Invisible byte 1 unless data storage build:entity_data {NBT:{Invisible:1b}}
execute if score @s entity_data matches -45 store success entity @e[tag=selected_entity,limit=1] OnGround byte 1 unless data storage build:entity_data {NBT:{OnGround:1b}}
 
execute if score @s entity_data matches -46 store success entity @e[tag=selected_entity,limit=1] LeftHanded byte 1 unless data storage build:entity_data {NBT:{LeftHanded:1b}}

# Item Slots

scoreboard players set <modifying_item_slots> variable 1
execute unless score @s entity_data matches -53..-47 unless score @s entity_data matches -155 run scoreboard players set <modifying_item_slots> variable 0
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 run data modify storage build:entity_data swap_items set value [{},{}]
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 run data modify storage build:entity_data swap_items[1] set from entity @s SelectedItem

execute in pandamium:staff_world if score @s entity_data matches -47 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.ArmorItems[0]
execute in pandamium:staff_world if score @s entity_data matches -48 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.ArmorItems[1]
execute in pandamium:staff_world if score @s entity_data matches -49 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.ArmorItems[2]
execute in pandamium:staff_world if score @s entity_data matches -50 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.ArmorItems[3]
execute in pandamium:staff_world if score @s entity_data matches -51 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.HandItems[0]
execute in pandamium:staff_world if score @s entity_data matches -52 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.HandItems[1]
execute in pandamium:staff_world if score @s entity_data matches -53 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.Item
execute in pandamium:staff_world if score @s entity_data matches -155 run data modify storage build:entity_data swap_items[0] set from storage build:entity_data NBT.DecorItem

execute in pandamium:staff_world if score @s entity_data matches -47 run data modify entity @e[tag=selected_entity,limit=1] ArmorItems[0] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -48 run data modify entity @e[tag=selected_entity,limit=1] ArmorItems[1] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -49 run data modify entity @e[tag=selected_entity,limit=1] ArmorItems[2] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -50 run data modify entity @e[tag=selected_entity,limit=1] ArmorItems[3] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -51 run data modify entity @e[tag=selected_entity,limit=1] HandItems[0] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -52 run data modify entity @e[tag=selected_entity,limit=1] HandItems[1] set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -53 run data modify entity @e[tag=selected_entity,limit=1] Item set from storage build:entity_data swap_items[1]
execute in pandamium:staff_world if score @s entity_data matches -155 run data modify entity @e[tag=selected_entity,limit=1] DecorItem set from storage build:entity_data swap_items[1]

execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 store success score <swap_item0_exists> variable if data storage build:entity_data swap_items[0].id 
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 if score <swap_item0_exists> variable matches 0 run item replace entity @s weapon.mainhand with air
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 if score <swap_item0_exists> variable matches 1 run setblock 0 0 0 shulker_box
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 if score <swap_item0_exists> variable matches 1 run item replace block 0 0 0 container.0 with barrier
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 if score <swap_item0_exists> variable matches 1 run data modify block 0 0 0 Items[0] set from storage build:entity_data swap_items[0]
execute in pandamium:staff_world if score <modifying_item_slots> variable matches 1 if score <swap_item0_exists> variable matches 1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0

#

#execute if score @s entity_data matches -54 carriedBlockState

execute if score @s entity_data matches -55 run data merge entity @e[tag=selected_entity,limit=1] {Type:'oak'}
execute if score @s entity_data matches -56 run data merge entity @e[tag=selected_entity,limit=1] {Type:'spruce'}
execute if score @s entity_data matches -57 run data merge entity @e[tag=selected_entity,limit=1] {Type:'birch'}
execute if score @s entity_data matches -58 run data merge entity @e[tag=selected_entity,limit=1] {Type:'jungle'}
execute if score @s entity_data matches -59 run data merge entity @e[tag=selected_entity,limit=1] {Type:'acacia'}
execute if score @s entity_data matches -60 run data merge entity @e[tag=selected_entity,limit=1] {Type:'dark_oak'}
execute if score @s entity_data matches -61 run data merge entity @e[tag=selected_entity,limit=1] {Type:'red'}
execute if score @s entity_data matches -62 run data merge entity @e[tag=selected_entity,limit=1] {Type:'snow'}
execute if score @s entity_data matches -63 run data merge entity @e[tag=selected_entity,limit=1] {Type:'brown'}

execute if score @s entity_data matches -64 run data merge entity @e[tag=selected_entity,limit=1] {Variant:0}
execute if score @s entity_data matches -65 run data merge entity @e[tag=selected_entity,limit=1] {Variant:1}
execute if score @s entity_data matches -66 run data merge entity @e[tag=selected_entity,limit=1] {Variant:2}
execute if score @s entity_data matches -67 run data merge entity @e[tag=selected_entity,limit=1] {Variant:3}
execute if score @s entity_data matches -68 run data merge entity @e[tag=selected_entity,limit=1] {Variant:4}
execute if score @s entity_data matches -69 run data merge entity @e[tag=selected_entity,limit=1] {Variant:5}
execute if score @s entity_data matches -70 run data merge entity @e[tag=selected_entity,limit=1] {Variant:6}
execute if score @s entity_data matches -71 run data merge entity @e[tag=selected_entity,limit=1] {Variant:7}

execute if score @s entity_data matches -72 run data merge entity @e[tag=selected_entity,limit=1] {CatType:0}
execute if score @s entity_data matches -73 run data merge entity @e[tag=selected_entity,limit=1] {CatType:1}
execute if score @s entity_data matches -74 run data merge entity @e[tag=selected_entity,limit=1] {CatType:2}
execute if score @s entity_data matches -75 run data merge entity @e[tag=selected_entity,limit=1] {CatType:3}
execute if score @s entity_data matches -76 run data merge entity @e[tag=selected_entity,limit=1] {CatType:4}
execute if score @s entity_data matches -77 run data merge entity @e[tag=selected_entity,limit=1] {CatType:5}
execute if score @s entity_data matches -78 run data merge entity @e[tag=selected_entity,limit=1] {CatType:6}
execute if score @s entity_data matches -79 run data merge entity @e[tag=selected_entity,limit=1] {CatType:7}
execute if score @s entity_data matches -80 run data merge entity @e[tag=selected_entity,limit=1] {CatType:8}
execute if score @s entity_data matches -81 run data merge entity @e[tag=selected_entity,limit=1] {CatType:9}
execute if score @s entity_data matches -82 run data merge entity @e[tag=selected_entity,limit=1] {CatType:10}

execute if score @s entity_data matches -83 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:0}
execute if score @s entity_data matches -84 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:1}
execute if score @s entity_data matches -85 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:2}
execute if score @s entity_data matches -86 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:3}
execute if score @s entity_data matches -87 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:4}
execute if score @s entity_data matches -88 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:5}
execute if score @s entity_data matches -89 run data merge entity @e[tag=selected_entity,limit=1] {RabbitType:99}

execute if score @s entity_data matches -90 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:normal}
execute if score @s entity_data matches -91 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:aggressive}
execute if score @s entity_data matches -92 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:lazy}
execute if score @s entity_data matches -93 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:worried}
execute if score @s entity_data matches -94 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:playful}
execute if score @s entity_data matches -95 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:weak}
execute if score @s entity_data matches -96 run data merge entity @e[tag=selected_entity,limit=1] {MainGene:brown}

execute if score @s entity_data matches -97 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:0b}
execute if score @s entity_data matches -98 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:1b}
execute if score @s entity_data matches -99 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:2b}
execute if score @s entity_data matches -100 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:3b}
execute if score @s entity_data matches -101 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:4b}
execute if score @s entity_data matches -102 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:5b}
execute if score @s entity_data matches -103 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:6b}
execute if score @s entity_data matches -104 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:7b}
execute if score @s entity_data matches -105 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:8b}
execute if score @s entity_data matches -106 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:9b}
execute if score @s entity_data matches -107 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:10b}
execute if score @s entity_data matches -108 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:11b}
execute if score @s entity_data matches -109 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:12b}
execute if score @s entity_data matches -110 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:13b}
execute if score @s entity_data matches -111 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:14b}
execute if score @s entity_data matches -112 run data merge entity @e[tag=selected_entity,limit=1] {CollarColor:15b}

execute if score @s entity_data matches -113 store success entity @e[tag=selected_entity,limit=1] Crouching byte 1 unless data storage build:entity_data {NBT:{Crouching:1b}}
execute if score @s entity_data matches -114 store success entity @e[tag=selected_entity,limit=1] Sitting byte 1 unless data storage build:entity_data {NBT:{Sitting:1b}}
execute if score @s entity_data matches -115 store success entity @e[tag=selected_entity,limit=1] Sleeping byte 1 unless data storage build:entity_data {NBT:{Sleeping:1b}}

execute if score @s entity_data matches -116 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {Health:100f}
execute if score @s entity_data matches -117 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {Health:74f}
execute if score @s entity_data matches -118 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {Health:49f}
execute if score @s entity_data matches -119 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {Health:24f}

execute if score @s entity_data matches -120 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {DisabledSlots:0}
execute if score @s entity_data matches -121 run data merge entity @e[tag=selected_entity,limit=1,type=iron_golem] {DisabledSlots:4144896}

execute if score @s entity_data matches -122 store success entity @e[tag=selected_entity,limit=1] Marker byte 1 unless data storage build:entity_data {NBT:{Marker:1b}}
execute if score @s entity_data matches -123 store success entity @e[tag=selected_entity,limit=1] NoBasePlate byte 1 unless data storage build:entity_data {NBT:{NoBasePlate:1b}}
execute if score @s entity_data matches -124 store success entity @e[tag=selected_entity,limit=1] ShowArms byte 1 unless data storage build:entity_data {NBT:{ShowArms:1b}}
execute if score @s entity_data matches -125 store success entity @e[tag=selected_entity,limit=1] Small byte 1 unless data storage build:entity_data {NBT:{Small:1b}}
#execute if score @s entity_data matches -126 Pose

execute if score @s entity_data matches -127 store success entity @e[tag=selected_entity,limit=1] Fixed byte 1 unless data storage build:entity_data {NBT:{Fixed:1b}}

execute if score @s entity_data matches -130..-128 store result score <value> variable run data get entity @e[tag=selected_entity,limit=1] ItemRotation
execute if score @s entity_data matches -128 run scoreboard players add <value> variable 1
execute if score @s entity_data matches -129 run scoreboard players set <value> variable 0
execute if score @s entity_data matches -130 run scoreboard players remove <value> variable 1
execute if score @s entity_data matches -130..-128 store result entity @e[tag=selected_entity,limit=1] ItemRotation byte 1 run scoreboard players get <value> variable

execute if score @s entity_data matches -131 store success entity @e[tag=selected_entity,limit=1] IsBaby byte 1 unless data storage build:entity_data {NBT:{IsBaby:1b}}

execute if score @s entity_data matches -134..-132 store result score <value> variable run data get entity @e[tag=selected_entity,limit=1] Size
execute if score @s entity_data matches -132 run scoreboard players add <value> variable 1
execute if score @s entity_data matches -133 run scoreboard players set <value> variable 0
execute if score @s entity_data matches -134 run scoreboard players remove <value> variable 1
execute if score @s entity_data matches -134..-132 store result entity @e[tag=selected_entity,limit=1] Size byte 1 run scoreboard players get <value> variable

execute if score @s entity_data matches -135 store success entity @e[tag=selected_entity,limit=1] Tame byte 1 unless data storage build:entity_data {NBT:{Tame:1b}}
execute if score @s entity_data matches -136 run data merge entity @e[tag=selected_entity,limit=1] {Owner:[I;0,0,0,0]}

execute if score @s entity_data matches -137 store success entity @e[tag=selected_entity,limit=1] Saddle byte 1 unless data storage build:entity_data {NBT:{Saddle:1b}}
execute if score @s entity_data matches -138 store success entity @e[tag=selected_entity,limit=1] ChestedHorse byte 1 unless data storage build:entity_data {NBT:{ChestedHorse:1b}}
execute if score @s entity_data matches -139 store success entity @e[tag=selected_entity,limit=1] EatingHaystack byte 1 unless data storage build:entity_data {NBT:{EatingHaystack:1b}}

#execute if score @s entity_data matches -140 AttachFace
#execute if score @s entity_data matches -141 AttachFace
#execute if score @s entity_data matches -142 AttachFace
#execute if score @s entity_data matches -143 AttachFace
#execute if score @s entity_data matches -144 AttachFace
#execute if score @s entity_data matches -145 AttachFace

execute if score @s entity_data matches -148..-146 store result score <value> variable run data get entity @e[tag=selected_entity,limit=1] Peek
execute if score @s entity_data matches -146 run scoreboard players add <value> variable 1
execute if score @s entity_data matches -147 run scoreboard players set <value> variable 0
execute if score @s entity_data matches -148 run scoreboard players remove <value> variable 1
execute if score @s entity_data matches -148..-146 store result entity @e[tag=selected_entity,limit=1] Peek byte 1 run scoreboard players get <value> variable

execute if score @s entity_data matches -151..-149 store result score <value> variable run data get entity @e[tag=selected_entity,limit=1] PuffState
execute if score @s entity_data matches -149 run scoreboard players add <value> variable 1
execute if score @s entity_data matches -150 run scoreboard players set <value> variable 0
execute if score @s entity_data matches -151 run scoreboard players remove <value> variable 1
execute if score @s entity_data matches -151..-149 store result entity @e[tag=selected_entity,limit=1] PuffState byte 1 run scoreboard players get <value> variable

execute if score @s entity_data matches -149 run data merge entity @e[tag=selected_entity,limit=1] {PuffState:0}
execute if score @s entity_data matches -150 run data merge entity @e[tag=selected_entity,limit=1] {PuffState:1}
execute if score @s entity_data matches -151 run data merge entity @e[tag=selected_entity,limit=1] {PuffState:2}

execute if score @s entity_data matches -152 store success entity @e[tag=selected_entity,limit=1] Sheared byte 1 unless data storage build:entity_data {NBT:{Sheared:1b}}
execute if score @s entity_data matches -153 store success entity @e[tag=selected_entity,limit=1] Pumpkin byte 1 unless data storage build:entity_data {NBT:{Pumpkin:1b}}
execute if score @s entity_data matches -154 store success entity @e[tag=selected_entity,limit=1] BatFlags byte 1 unless data storage build:entity_data {NBT:{BatFlags:1b}}
#DecorItem is grouped with Item Slots

#execute if score @s entity_data matches -156 Motive
#execute if score @s entity_data matches -157 Motive

#execute if score @s entity_data matches -158 AngerTime
#execute if score @s entity_data matches -159 AngerTime

execute if score @s entity_data matches -160 store success entity @e[tag=selected_entity,limit=1] HasNectar byte 1 unless data storage build:entity_data {NBT:{HasNectar:1b}}
execute if score @s entity_data matches -161 store success entity @e[tag=selected_entity,limit=1] HasStung byte 1 unless data storage build:entity_data {NBT:{HasStung:1b}}
execute if score @s entity_data matches -162 store success entity @e[tag=selected_entity,limit=1] ShowBottom byte 1 unless data storage build:entity_data {NBT:{ShowBottom:1b}}

execute if score @s entity_data matches -163 run data merge entity @e[tag=selected_entity,limit=1] {DarkTicksRemaining:0}
execute if score @s entity_data matches -164 run data merge entity @e[tag=selected_entity,limit=1] {DarkTicksRemaining:2147483647}

execute if score @s entity_data matches -165 store success entity @e[tag=selected_entity,limit=1] IsImmuneToZombification byte 1 unless data storage build:entity_data {NBT:{IsImmuneToZombification:1b}}
execute if score @s entity_data matches -166 store success entity @e[tag=selected_entity,limit=1] pickup byte 1 unless data storage build:entity_data {NBT:{pickup:1b}}
execute if score @s entity_data matches -167 store success entity @e[tag=selected_entity,limit=1] IsScreamingGoat byte 1 unless data storage build:entity_data {NBT:{IsScreamingGoat:1b}}

#
