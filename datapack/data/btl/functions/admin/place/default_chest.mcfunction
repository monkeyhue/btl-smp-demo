summon interaction ~ ~ ~ {width:1.05f,height:1.2f,Tags:["btl.block","btl.b.chest","btl.b.chest.default","btl.new"],Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6541501}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}]}

execute as @e[type=interaction,tag=btl.new,tag=btl.b.chest.default,dx=0,limit=1] run function btl:b/chest/test

setblock ~ ~ ~ air