# pandabuild
data modify storage pandabuild:dictionary pandabuild/name set value "PandaBuild"

# chat
data modify storage pandabuild:dictionary chat/success set value {color:"green",extra:[{color:"dark_green",text:"[",extra:[{storage:"pandabuild:dictionary",nbt:"pandabuild/name",interpret:true},"]"]}," "],text:""}
data modify storage pandabuild:dictionary chat/error set value {color:"red",extra:[{color:"dark_red",text:"[",extra:[{storage:"pandabuild:dictionary",nbt:"pandabuild/name",interpret:true},"]"]}," "],text:""}
data modify storage pandabuild:dictionary chat/public set value {color:"green",extra:[{color:"blue",text:"[Info]"}," "],text:""}
data modify storage pandabuild:dictionary chat/private set value {color:"gray",extra:[{color:"dark_gray",text:"[Private Info]"}," "],text:""}
