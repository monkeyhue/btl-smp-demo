execute on passengers on passengers run data modify storage btl:temp ReturnedItem set from entity @s item
execute on target at @s run summon item ~ ~0.1 ~ {Age:5980,PickupDelay:1,Invulnerable:1b,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}}}
execute on target at @s as @e[type=item,tag=btl.new,limit=1,distance=..4] run data modify entity @s Item set from storage btl:temp ReturnedItem
execute on target at @s as @e[type=item,tag=btl.new,limit=1,distance=..4] run tag @s remove btl.new
execute on passengers on passengers run data remove entity @s item
tag @s remove btl.temp.fp_hasitem
tag @s add btl.temp.modified
data remove storage btl:temp ReturnedItem