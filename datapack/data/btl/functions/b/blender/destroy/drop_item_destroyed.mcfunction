data modify storage btl:temp ReturnedItem set from entity @s item.tag.data
summon item ~ ~0.1 ~ {PickupDelay:2,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[0.0,0.2,0.0]}
execute as @e[type=item,tag=btl.new,limit=1,distance=..4] run data modify entity @s Item set from storage btl:temp ReturnedItem
execute as @e[type=item,tag=btl.new,limit=1,distance=..4] run tag @s remove btl.new
data remove storage btl:temp ReturnedItem