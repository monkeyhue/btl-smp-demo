#--- Reduce data to simple CMD ---
execute store result score @s monkeyhue.temp1 run data get entity @s item.tag.CustomModelData
execute if entity @s[tag=btl.b.door.socket2] run scoreboard players remove @s monkeyhue.temp1 1000
execute if entity @s[tag=btl.b.door.socket3] run scoreboard players remove @s monkeyhue.temp1 2000
execute if entity @s[tag=btl.b.door.socket4] run scoreboard players remove @s monkeyhue.temp1 3000
execute if entity @s[tag=btl.b.door.socket5] run scoreboard players remove @s monkeyhue.temp1 4000
execute if entity @s[tag=btl.b.door.socket6] run scoreboard players remove @s monkeyhue.temp1 5000
execute if entity @s[tag=btl.b.door.socket7] run scoreboard players remove @s monkeyhue.temp1 6000
scoreboard players remove @s monkeyhue.temp1 6540000

#--- Tree for portalstone return ---
execute if score @s monkeyhue.temp1 matches 1 run scoreboard players set #btl.returnedItem monkeyhue.temp1 1

#--- Set data and wrap up ---
data modify entity @s item.tag.CustomModelData set value 6540000
tag @s remove btl.b.door.socketed