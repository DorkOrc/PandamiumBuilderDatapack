# arguments: block

execute in pandabuild:storage unless loaded 0 0 0 run tellraw @s {color:"red",text:"An error occurred: Storage chunk not loaded"}
execute in pandabuild:storage unless loaded 0 0 0 run return fail

# get block's item
$execute in pandabuild:storage run setblock 0 0 0 $(block){} strict
execute in pandabuild:storage run setblock 0 1 0 yellow_shulker_box{} strict
execute in pandabuild:storage unless items block 0 1 0 container.0 #leaves run loot replace block 0 1 0 container.0 mine 0 0 0 minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
execute in pandabuild:storage unless items block 0 1 0 container.0 * run loot replace block 0 1 0 container.0 mine 0 0 0 minecraft:shears[enchantments={silk_touch:1}]
execute in pandabuild:storage if block 0 0 0 dead_bush run item replace block 0 1 0 container.0 with dead_bush
execute in pandabuild:storage if block 0 0 0 tripwire run item replace block 0 1 0 container.0 with string[item_name={translate:"block.minecraft.tripwire"}]
execute in pandabuild:storage if block 0 0 0 powder_snow run item replace block 0 1 0 container.0 with powder_snow_bucket[item_name={translate:"block.minecraft.powder_snow"}]
execute in pandabuild:storage if block 0 0 0 water run item replace block 0 1 0 container.0 with water_bucket[item_name={translate:"block.minecraft.water"}]
execute in pandabuild:storage if block 0 0 0 bubble_column run item replace block 0 1 0 container.0 with water_bucket[item_name={translate:"block.minecraft.bubble_column"}]
execute in pandabuild:storage if block 0 0 0 lava run item replace block 0 1 0 container.0 with lava_bucket[item_name={translate:"block.minecraft.lava"}]
execute in pandabuild:storage if block 0 0 0 fire run item replace block 0 1 0 container.0 with flint_and_steel[item_name={translate:"block.minecraft.fire"}]
execute in pandabuild:storage if block 0 0 0 soul_fire run item replace block 0 1 0 container.0 with flint_and_steel[item_name={translate:"block.minecraft.soul_fire"}]
data modify storage pandabuild:main functions."pandabuild:give/replacement_block".item set value {}
execute in pandabuild:storage run data modify storage pandabuild:main functions."pandabuild:give/replacement_block".item set from block 0 1 0 Items[0]

# get block's name
execute in pandabuild:storage summon item run function pandabuild:impl/replacement_block/as_item

# get item
$execute in pandabuild:storage run item replace block 0 1 0 container.0 with pig_spawn_egg[entity_data={id:"minecraft:marker"},custom_data={pandabuild:{id:"replacement_block",replacement_block:{args:{block:"$(block)"}}}},rarity="epic",item_model="minecraft:light",enchantment_glint_override=true,item_name=["",{bold:true,text:"Places"},": ","$(block)"],lore=[{color:"gray",italic:false,text:"Places: $(block)"}]]
execute in pandabuild:storage run data modify block 0 1 0 Items[0].components.minecraft:item_model set from storage pandabuild:main functions."pandabuild:give/replacement_block".item.id
execute in pandabuild:storage run data modify block 0 1 0 Items[0].components.minecraft:item_name set from storage pandabuild:main functions."pandabuild:give/replacement_block".name

# give item
execute in pandabuild:storage run loot give @s mine 0 1 0 stick[custom_data={drop_contents:true}]
