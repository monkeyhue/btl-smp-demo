execute unless block ~ ~1 ~ #btl:unsolid run loot spawn ~ ~ ~ loot btl:block/fusion_pedestal

execute if block ~ ~ ~ furnace run summon interaction ~ ~-0.5 ~ {width:1.01f,height:1.01f,Tags:["btl.block","btl.unticked","btl.b.fusion_pedestal"],Passengers:[{id:"minecraft:item_display",view_range:4f,item:{id:"minecraft:furnace",Count:1b,tag:{CustomModelData:6540004}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.2f,0f],scale:[1f,1f,1f]},billboard:"vertical",item_display:"ground"}]}]}

setblock ~ ~ ~ barrier