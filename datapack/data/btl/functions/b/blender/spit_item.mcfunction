#// Cool stuff
data modify storage btl:temp ReturnedItem set from entity @s item.tag.output[0]
data remove entity @s item.tag.output[0]

#// North
execute if score @s btl.b.baseRotation matches 0 run summon item ~ ~0.2 ~ {Air:0s,PickupDelay:10,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[0.0,0.12,-0.2]}

#// East
execute if score @s btl.b.baseRotation matches 4194304 run summon item ~ ~0.2 ~ {Air:0s,PickupDelay:10,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[0.2,0.12,0.0]}

#// South
execute if score @s btl.b.baseRotation matches 8388608 run summon item ~ ~0.2 ~ {Air:0s,PickupDelay:10,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[0.0,0.12,0.2]}

#// West
execute if score @s btl.b.baseRotation matches 12582912 run summon item ~ ~0.2 ~ {Air:0s,PickupDelay:10,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[-0.2,0.12,0.0]}

execute as @e[type=item,tag=btl.new,limit=1,distance=..4] run function btl:b/blender/item

#// Cleanup
data remove storage btl:temp ReturnedItem

#// Fx
playsound minecraft:entity.player.burp block @a ~ ~ ~ 1 1
particle splash ~ ~0.3 ~ 0.3 0.1 0.3 1 3