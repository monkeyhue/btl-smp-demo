execute unless block ~ ~1 ~ #btl:unsolid run loot spawn ~ ~ ~ loot btl:block/stone_doorframe_1

execute if block ~ ~ ~ furnace[facing=north] if block ~ ~1 ~ #btl:unsolid run summon interaction ~ ~-0.5 ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.doorframe","btl.b.doorframe.stone","btl.new","btl.b.1socket"],Passengers:[{id:"minecraft:item_display",view_range:4f,item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540001}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}
execute if block ~ ~ ~ furnace[facing=east] if block ~ ~1 ~ #btl:unsolid run summon interaction ~ ~-0.5 ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.doorframe","btl.b.doorframe.stone","btl.new","btl.b.1socket"],Passengers:[{id:"minecraft:item_display",view_range:4f,item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4194304},Damage:0,CustomModelData:6540001}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}
execute if block ~ ~ ~ furnace[facing=south] if block ~ ~1 ~ #btl:unsolid run summon interaction ~ ~-0.5 ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.doorframe","btl.b.doorframe.stone","btl.new","btl.b.1socket"],Passengers:[{id:"minecraft:item_display",view_range:4f,item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8388608},Damage:0,CustomModelData:6540001}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}
execute if block ~ ~ ~ furnace[facing=west] if block ~ ~1 ~ #btl:unsolid run summon interaction ~ ~-0.5 ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.doorframe","btl.b.doorframe.stone","btl.new","btl.b.1socket"],Passengers:[{id:"minecraft:item_display",view_range:4f,item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12582912},Damage:0,CustomModelData:6540001}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}

execute as @e[type=interaction,tag=btl.new,tag=btl.b.doorframe.stone,dx=0,limit=1] run function btl:b/doorframe/place/init

setblock ~ ~ ~ air