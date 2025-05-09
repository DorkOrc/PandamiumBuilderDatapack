item replace entity @s contents from block 0 1 0 container.0
item modify entity @s contents {function:"minecraft:set_name",entity:"this",name:["",{bold:true,text:"Places"},": ",{selector:"@s"}]}

data modify storage pandabuild:main functions."pandabuild:give/replacement_block".name set value ["",{bold:true,text:"Places"},": ","Unknown"]
data modify storage pandabuild:main functions."pandabuild:give/replacement_block".name set from entity @s Item.components.minecraft:custom_name
