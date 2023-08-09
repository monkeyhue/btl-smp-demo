execute store result score @s monkeyhue.temp1 run data get entity @s Health
scoreboard players set @s monkeyhue.temp2 1023
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp1
#scoreboard players operation @s monkeyhue.temp2 += @s btl.damage
scoreboard players operation @s monkeyhue.entity.health -= @s monkeyhue.temp2
execute if score @s monkeyhue.temp2 matches 1.. unless score @s monkeyhue.entity.hurtTime matches 0.. run scoreboard players set @s monkeyhue.entity.hurtTime 10
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2
data merge entity @s {Health:1024f}
