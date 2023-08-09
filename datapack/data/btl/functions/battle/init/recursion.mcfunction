execute if entity @s[tag=btl.b.door.socketed] on passengers run function btl:battle/init/recursion

#--- Clean CMD ---
execute store result score @s monkeyhue.temp1 run data get entity @s item.tag.CustomModelData
scoreboard players remove @s monkeyhue.temp1 6540000
execute if entity @s[tag=btl.b.door.socket2] run scoreboard players remove @s monkeyhue.temp1 1000
execute if entity @s[tag=btl.b.door.socket3] run scoreboard players remove @s monkeyhue.temp1 2000
execute if entity @s[tag=btl.b.door.socket4] run scoreboard players remove @s monkeyhue.temp1 3000
execute if entity @s[tag=btl.b.door.socket5] run scoreboard players remove @s monkeyhue.temp1 4000
execute if entity @s[tag=btl.b.door.socket6] run scoreboard players remove @s monkeyhue.temp1 5000
execute if entity @s[tag=btl.b.door.socket7] run scoreboard players remove @s monkeyhue.temp1 6000

execute if score @s monkeyhue.temp1 matches 1 run scoreboard players add #btl.id.blue monkeyhue.temp4 1

scoreboard players reset @s monkeyhue.temp1