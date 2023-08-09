#--- Variables ---

#--- Get item player is holding ---
execute on target if predicate btl:player/wooden_door run data modify storage btl:temp spawnDoor set value {}
execute if data storage btl:temp spawnDoor if entity @e[type=interaction,tag=btl.b.door,distance=..64] on target run function btl:b/doorframe/actionbar/prox
execute if data storage btl:temp spawnDoor unless entity @e[type=interaction,tag=btl.b.door,distance=..64] run function btl:b/doorframe/transform
execute unless data storage btl:temp spawnDoor on target run function btl:b/doorframe/actionbar/hint

data remove storage btl:temp spawnDoor
data remove entity @s interaction