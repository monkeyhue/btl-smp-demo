#--- Turn this doorframe entity into a door entity ---
execute store result storage btl:temp spawnDoor.doorframeData int 1.0 on passengers run data get entity @s item.tag.CustomModelData
execute store result storage btl:temp spawnDoor.color int 1.0 on passengers run data get entity @s item.tag.display.color
execute store result storage btl:temp spawnDoor.sockets int 1.0 run scoreboard players get @s btl.b.sockets

execute if score @s btl.b.sockets matches 1 run summon interaction ~ ~ ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.door","btl.new"],Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked","btl.b.door.socket1"],item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}]}]}]}

execute if score @s btl.b.sockets matches 2 run summon interaction ~ ~ ~ {width:1f,height:2.2f,Tags:["btl.block","btl.b.iron_axe_pick","btl.b.door","btl.new"],Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked"],item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked","btl.b.door.socket2"],item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:item_display",Tags:["btl.b.stacked","btl.b.door.socket3"],item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0},Damage:0,CustomModelData:6540000}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}]}]}]}]}]}

execute as @e[type=interaction,tag=btl.new,tag=btl.b.door,dx=0,limit=1] run function btl:b/door/spawn

scoreboard players add @s monkeyhue.time1 1
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand btl:remove_1

#// Important! The order of entities is stacked like so, from top to bottom:
# Portalstone Slots
# Portal
# Door
# Doorframe
# Base Interaction