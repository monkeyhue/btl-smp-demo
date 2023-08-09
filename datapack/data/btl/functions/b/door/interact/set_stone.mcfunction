#--- Get initial socket number and CMD ---
scoreboard players set @s monkeyhue.temp1 6540000
execute if entity @s[tag=btl.b.door.socket2] run scoreboard players add @s monkeyhue.temp1 1000
execute if entity @s[tag=btl.b.door.socket3] run scoreboard players add @s monkeyhue.temp1 2000
execute if entity @s[tag=btl.b.door.socket4] run scoreboard players add @s monkeyhue.temp1 3000
execute if entity @s[tag=btl.b.door.socket5] run scoreboard players add @s monkeyhue.temp1 4000
execute if entity @s[tag=btl.b.door.socket6] run scoreboard players add @s monkeyhue.temp1 5000
execute if entity @s[tag=btl.b.door.socket7] run scoreboard players add @s monkeyhue.temp1 6000

#--- Tree for portalstone display ---
execute if data storage btl:temp heldItem.portalstone{type:"blue"} run scoreboard players add @s monkeyhue.temp1 1
execute if data storage btl:temp heldItem.portalstone{type:"green"} run scoreboard players add @s monkeyhue.temp1 2
execute if data storage btl:temp heldItem.portalstone{type:"red"} run scoreboard players add @s monkeyhue.temp1 3
execute if data storage btl:temp heldItem.portalstone{type:"yellow"} run scoreboard players add @s monkeyhue.temp1 4

#--- Set data and wrap up ---
execute store result entity @s item.tag.CustomModelData int 1.0 run scoreboard players get @s monkeyhue.temp1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1.8
scoreboard players set #btl.returnedItem monkeyhue.temp1 -1
tag @s add btl.b.door.socketed