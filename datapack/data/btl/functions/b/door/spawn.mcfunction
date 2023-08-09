execute store result score @s btl.b.sockets run data get storage btl:temp spawnDoor.sockets
execute on passengers run function btl:b/door/display/anim/put_door
execute on passengers store result entity @s item.tag.CustomModelData int 1.0 run data get storage btl:temp spawnDoor.doorframeData

#// 1st socket
execute on passengers on passengers on passengers on passengers store result score @s btl.b.sockets run data get storage btl:temp spawnDoor.sockets

#// 2nd socket
execute if score @s btl.b.sockets matches 2.. on passengers on passengers on passengers on passengers on passengers store result score @s btl.b.sockets run data get storage btl:temp spawnDoor.sockets

#// 3rd socket
execute if score @s btl.b.sockets matches 3.. on passengers on passengers on passengers on passengers on passengers on passengers store result score @s btl.b.sockets run data get storage btl:temp spawnDoor.sockets

#// 4th socket
execute if score @s btl.b.sockets matches 4 on passengers on passengers on passengers on passengers on passengers on passengers on passengers store result score @s btl.b.sockets run data get storage btl:temp spawnDoor.sockets

playsound btl:block.dimensional_door.spawn block @a ~ ~ ~ 1 1
scoreboard players set @s monkeyhue.time1 1
tag @s remove btl.new
tag @s add btl.b.door.spawning